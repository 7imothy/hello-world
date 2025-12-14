// App State
let currentPage = 'restaurants';
let currentSegment = 'tips'; // For tips/trips page

// Initialize App
document.addEventListener('DOMContentLoaded', () => {
    setupNavigation();
    renderPage('restaurants');
    setupModal();
    checkInstallPrompt();
});

// Navigation Setup
function setupNavigation() {
    const navBtns = document.querySelectorAll('.nav-btn');
    navBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            const page = btn.dataset.page;
            if (page !== currentPage) {
                // Update active state
                navBtns.forEach(b => b.classList.remove('active'));
                btn.classList.add('active');

                // Update page
                currentPage = page;
                renderPage(page);
            }
        });
    });
}

// Page Rendering
function renderPage(page) {
    const content = document.getElementById('content');
    const pageTitle = document.getElementById('page-title');

    switch(page) {
        case 'restaurants':
            pageTitle.textContent = 'Restaurants';
            renderRestaurants(content);
            break;
        case 'activities':
            pageTitle.textContent = 'Activities';
            renderActivities(content);
            break;
        case 'weather':
            pageTitle.textContent = 'Weather';
            renderWeather(content);
            break;
        case 'diving':
            pageTitle.textContent = 'Dive Sites';
            renderDiving(content);
            break;
        case 'tips':
            pageTitle.textContent = 'Tips & Trips';
            renderTipsAndTrips(content);
            break;
    }

    // Scroll to top
    window.scrollTo(0, 0);
}

// Render Restaurants
function renderRestaurants(container) {
    const html = `
        <div class="card-list">
            ${DATA.restaurants.map(restaurant => `
                <div class="card" onclick="showRestaurantDetail(${restaurant.id})">
                    <div class="card-title">${restaurant.name}</div>
                    <div class="card-subtitle">${restaurant.cuisine}</div>
                    <div class="card-meta">
                        <span class="card-meta-left">${restaurant.location}</span>
                        <span class="card-meta-right">${restaurant.priceRange}</span>
                    </div>
                </div>
            `).join('')}
        </div>
    `;
    container.innerHTML = html;
}

// Render Activities
function renderActivities(container) {
    const html = `
        <div class="card-list">
            ${DATA.activities.map(activity => `
                <div class="card" onclick="showActivityDetail(${activity.id})">
                    <div class="card-title">${activity.name}</div>
                    <div class="card-subtitle">${activity.category}</div>
                    <div class="card-meta">
                        <span class="card-meta-left">${activity.duration} • ${activity.cost}</span>
                        <span class="badge badge-${activity.difficulty.toLowerCase()}">${activity.difficulty}</span>
                    </div>
                </div>
            `).join('')}
        </div>
    `;
    container.innerHTML = html;
}

// Render Weather
function renderWeather(container) {
    const weather = DATA.weather;
    const html = `
        <div class="weather-card">
            <div class="weather-main">
                <div>
                    <div class="weather-temp">${weather.temperature.split(' ')[0]}</div>
                    <div class="weather-condition">${weather.condition}</div>
                </div>
                <div style="font-size: 60px;">☀️</div>
            </div>
            <div class="weather-metrics">
                <div class="weather-metric">
                    <div class="weather-metric-label">Humidity</div>
                    <div class="weather-metric-value">${weather.humidity}</div>
                </div>
                <div class="weather-metric">
                    <div class="weather-metric-label">Wind Speed</div>
                    <div class="weather-metric-value">${weather.windSpeed}</div>
                </div>
            </div>
        </div>

        <div class="diving-card">
            <h3>🤿 Diving Conditions</h3>
            <div class="diving-metrics">
                <div class="diving-metric">
                    <div class="diving-metric-label">Water Temp</div>
                    <div class="diving-metric-value">${weather.waterTemp.split(' ')[0]}</div>
                </div>
                <div class="diving-metric">
                    <div class="diving-metric-label">Visibility</div>
                    <div class="diving-metric-value">${weather.visibility.split(' ')[0]}</div>
                </div>
            </div>
            <div class="visibility-indicator">
                <div class="visibility-dot"></div>
                <span>Excellent diving conditions</span>
            </div>
        </div>

        <div class="forecast-section">
            <h3>7-Day Forecast</h3>
            <div class="forecast-list">
                ${weather.forecast.map(day => `
                    <div class="forecast-item">
                        <div class="forecast-day">${day.day}</div>
                        <div class="forecast-condition">
                            ${day.condition}
                            <div style="font-size: 11px; color: var(--primary-color);">${day.chanceOfRain} rain</div>
                        </div>
                        <div class="forecast-temps">
                            <span class="forecast-high">${day.high}</span>
                            <span>/</span>
                            <span class="forecast-low">${day.low}</span>
                        </div>
                    </div>
                `).join('')}
            </div>
        </div>
    `;
    container.innerHTML = html;
}

// Render Diving
function renderDiving(container) {
    const html = `
        <div class="card-list">
            ${DATA.diveSites.map(site => `
                <div class="card" onclick="showDiveSiteDetail(${site.id})">
                    <div class="card-title">${site.name}</div>
                    <div class="card-subtitle">${site.depth}</div>
                    <div class="card-meta">
                        <span class="card-meta-left">${site.features[0]}</span>
                        <span class="badge badge-${getDifficultyClass(site.difficulty)}">${site.difficulty}</span>
                    </div>
                </div>
            `).join('')}
        </div>
    `;
    container.innerHTML = html;
}

// Render Tips and Trips
function renderTipsAndTrips(container) {
    const html = `
        <div class="segment-control">
            <button class="segment-btn ${currentSegment === 'tips' ? 'active' : ''}" onclick="switchSegment('tips')">Tips</button>
            <button class="segment-btn ${currentSegment === 'trips' ? 'active' : ''}" onclick="switchSegment('trips')">Trips</button>
        </div>
        <div id="segment-content">
            ${currentSegment === 'tips' ? renderTipsList() : renderTripsList()}
        </div>
    `;
    container.innerHTML = html;
}

function renderTipsList() {
    return `
        <div class="card-list">
            ${DATA.tips.map(tip => `
                <div class="card" onclick="showTipDetail(${tip.id})">
                    <div class="card-title">${tip.title}</div>
                    <div class="card-subtitle">${tip.category}</div>
                    <div class="card-meta">
                        <span class="card-meta-left">Tap to read more</span>
                        <span class="badge badge-${tip.importance.toLowerCase()}">${tip.importance}</span>
                    </div>
                </div>
            `).join('')}
        </div>
    `;
}

function renderTripsList() {
    return `
        <div class="card-list">
            ${DATA.trips.map(trip => `
                <div class="card" onclick="showTripDetail(${trip.id})">
                    <div class="card-title">${trip.name}</div>
                    <div class="card-subtitle">${trip.duration}</div>
                    <div class="card-meta">
                        <span class="card-meta-left">${trip.provider}</span>
                        <span class="card-meta-right">${trip.price}</span>
                    </div>
                </div>
            `).join('')}
        </div>
    `;
}

function switchSegment(segment) {
    currentSegment = segment;
    const content = document.getElementById('segment-content');
    content.innerHTML = segment === 'tips' ? renderTipsList() : renderTripsList();

    // Update button states
    const buttons = document.querySelectorAll('.segment-btn');
    buttons.forEach(btn => {
        btn.classList.toggle('active',
            (segment === 'tips' && btn.textContent === 'Tips') ||
            (segment === 'trips' && btn.textContent === 'Trips')
        );
    });
}

// Detail Views
function showRestaurantDetail(id) {
    const restaurant = DATA.restaurants.find(r => r.id === id);
    const html = `
        <div class="modal-title">${restaurant.name}</div>
        <div class="modal-section">
            <div class="card-subtitle" style="margin-bottom: 8px;">${restaurant.cuisine} • ${restaurant.priceRange}</div>
        </div>
        <div class="modal-section">
            <h3>About</h3>
            <p class="modal-text">${restaurant.description}</p>
        </div>
        <div class="modal-section">
            <h3>📍 Location</h3>
            <div class="detail-row">
                <span class="detail-label">Address</span>
                <span class="detail-value">${restaurant.location}</span>
            </div>
            ${restaurant.phone ? `
                <div class="detail-row">
                    <span class="detail-label">Phone</span>
                    <span class="detail-value">${restaurant.phone}</span>
                </div>
            ` : ''}
            <div class="detail-row">
                <span class="detail-label">Hours</span>
                <span class="detail-value">${restaurant.hours}</span>
            </div>
        </div>
        <div class="modal-section">
            <h3>⭐ Specialties</h3>
            <ul class="modal-list">
                ${restaurant.specialties.map(s => `<li>${s}</li>`).join('')}
            </ul>
        </div>
    `;
    showModal(html);
}

function showActivityDetail(id) {
    const activity = DATA.activities.find(a => a.id === id);
    const html = `
        <div class="modal-title">${activity.name}</div>
        <div class="modal-section">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                <span class="card-subtitle">${activity.category}</span>
                <span class="badge badge-${activity.difficulty.toLowerCase()}">${activity.difficulty}</span>
            </div>
        </div>
        <div class="modal-section">
            <h3>Description</h3>
            <p class="modal-text">${activity.description}</p>
        </div>
        <div class="modal-section">
            <h3>Details</h3>
            <div class="detail-row">
                <span class="detail-label">Duration</span>
                <span class="detail-value">${activity.duration}</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Cost</span>
                <span class="detail-value">${activity.cost}</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Best Time</span>
                <span class="detail-value">${activity.bestTime}</span>
            </div>
        </div>
        <div class="modal-section">
            <h3>💡 Tips</h3>
            <ul class="modal-list">
                ${activity.tips.map(t => `<li>${t}</li>`).join('')}
            </ul>
        </div>
    `;
    showModal(html);
}

function showDiveSiteDetail(id) {
    const site = DATA.diveSites.find(s => s.id === id);
    const html = `
        <div class="modal-title">${site.name}</div>
        <div class="modal-section">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                <span class="card-subtitle">${site.depth}</span>
                <span class="badge badge-${getDifficultyClass(site.difficulty)}">${site.difficulty}</span>
            </div>
        </div>
        <div class="modal-section">
            <h3>Description</h3>
            <p class="modal-text">${site.description}</p>
        </div>
        <div class="modal-section">
            <h3>🐠 Marine Life</h3>
            <ul class="modal-list">
                ${site.marineLife.map(m => `<li>${m}</li>`).join('')}
            </ul>
        </div>
        <div class="modal-section">
            <h3>⭐ Site Features</h3>
            <ul class="modal-list">
                ${site.features.map(f => `<li>${f}</li>`).join('')}
            </ul>
        </div>
        <div class="modal-section">
            <h3>☀️ Best Conditions</h3>
            <p class="modal-text" style="background-color: var(--bg-color); padding: 12px; border-radius: 8px;">${site.bestConditions}</p>
        </div>
    `;
    showModal(html);
}

function showTipDetail(id) {
    const tip = DATA.tips.find(t => t.id === id);
    const html = `
        <div class="modal-title">${tip.title}</div>
        <div class="modal-section">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
                <span class="card-subtitle">${tip.category}</span>
                <span class="badge badge-${tip.importance.toLowerCase()}">${tip.importance}</span>
            </div>
        </div>
        <div class="modal-section">
            <p class="modal-text" style="background-color: var(--bg-color); padding: 16px; border-radius: 12px; line-height: 1.7;">${tip.content}</p>
        </div>
    `;
    showModal(html);
}

function showTripDetail(id) {
    const trip = DATA.trips.find(t => t.id === id);
    const html = `
        <div class="modal-title">${trip.name}</div>
        <div class="modal-section">
            <div style="display: flex; justify-content: space-between; align-items: center;">
                <span class="card-subtitle">${trip.duration}</span>
                <span style="color: var(--success-color); font-weight: 600;">${trip.price}</span>
            </div>
        </div>
        <div class="modal-section">
            <h3>Description</h3>
            <p class="modal-text">${trip.description}</p>
        </div>
        <div class="modal-section">
            <h3>✓ What's Included</h3>
            <ul class="modal-list">
                ${trip.includes.map(i => `<li>${i}</li>`).join('')}
            </ul>
        </div>
        <div class="modal-section">
            <h3>🏢 Provider</h3>
            <p class="modal-text" style="background-color: var(--bg-color); padding: 12px; border-radius: 8px;">${trip.provider}</p>
        </div>
    `;
    showModal(html);
}

// Modal Functions
function setupModal() {
    const modal = document.getElementById('detail-modal');
    const closeBtn = document.getElementById('close-modal');

    closeBtn.addEventListener('click', closeModal);
    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            closeModal();
        }
    });
}

function showModal(content) {
    const modal = document.getElementById('detail-modal');
    const modalBody = document.getElementById('modal-body');
    modalBody.innerHTML = content;
    modal.classList.add('active');
    document.body.style.overflow = 'hidden';
}

function closeModal() {
    const modal = document.getElementById('detail-modal');
    modal.classList.remove('active');
    document.body.style.overflow = '';
}

// Helper Functions
function getDifficultyClass(difficulty) {
    if (difficulty.includes('Beginner') || difficulty.includes('All levels')) return 'easy';
    if (difficulty.includes('Intermediate')) return 'moderate';
    if (difficulty.includes('Advanced')) return 'advanced';
    return 'moderate';
}

// PWA Install Prompt
let deferredPrompt;

function checkInstallPrompt() {
    window.addEventListener('beforeinstallprompt', (e) => {
        e.preventDefault();
        deferredPrompt = e;
        showInstallPrompt();
    });
}

function showInstallPrompt() {
    // Check if already dismissed
    if (localStorage.getItem('installPromptDismissed') === 'true') {
        return;
    }

    const content = document.getElementById('content');
    const promptHtml = `
        <div class="install-prompt" id="install-prompt">
            <div class="install-prompt-text">
                <h3>Install App</h3>
                <p>Add to home screen for easy access</p>
            </div>
            <button class="install-btn" onclick="installApp()">Install</button>
            <button class="dismiss-btn" onclick="dismissInstallPrompt()">✕</button>
        </div>
    `;
    content.insertAdjacentHTML('afterbegin', promptHtml);
}

function installApp() {
    if (deferredPrompt) {
        deferredPrompt.prompt();
        deferredPrompt.userChoice.then((choiceResult) => {
            deferredPrompt = null;
            document.getElementById('install-prompt')?.remove();
        });
    }
}

function dismissInstallPrompt() {
    localStorage.setItem('installPromptDismissed', 'true');
    document.getElementById('install-prompt')?.remove();
}

// Register Service Worker
if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('service-worker.js')
        .then(() => console.log('Service Worker registered'))
        .catch(err => console.log('Service Worker registration failed:', err));
}
