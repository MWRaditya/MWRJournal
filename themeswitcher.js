const button = document.getElementById('themeSwitcher');
let isDarkMode = false;

// Check localStorage for saved theme preference
if (localStorage.getItem('isDarkMode') === 'true') {
    isDarkMode = true;
    document.body.style.setProperty('--background-color', '#121212');
    document.body.style.setProperty('--text-color', '#ffffff');
    button.textContent = 'Light Mode';
}

// Listen for the button click event
button.addEventListener('click', () => {
    const body = document.body; // Target body element
    let cardTitles = document.querySelectorAll('.card-title'); // Select all card titles
    let cards = document.querySelectorAll('.custom-card'); // Select all cards
    const tableElements = document.querySelectorAll('table, th, td');
    if (isDarkMode) {
        // Light mode
        body.style.setProperty('--background-color', '#ffffff');
        body.style.setProperty('--text-color', '#000000');
        body.style.setProperty('--card-background-color', '#f5f5f5'); // Light mode card background
        body.style.setProperty('--card-border-color', '#dee2e6'); // Light mode card border
        body.style.setProperty('--gallery-table-background', '#f8f9fa'); 
        body.style.setProperty('--gallery-border-color', '#dee2e6'); 
        body.style.setProperty('--gallery-card-background', '#ffffff'); 
        body.style.setProperty('--gallery-image-filter', 'none'); 
        cardTitles.forEach(title => {
            title.style.color = '#000000'; // Set card title color to black (light mode)
        });
        cards.forEach(card => {
            card.style.backgroundColor = '#f5f5f5'; // Set card background color to light gray (light mode)
        });
        button.textContent = 'Dark Mode';
        localStorage.setItem('isDarkMode', 'false');
        
        tableElements.forEach(el => {
            el.style.backgroundColor = 'var(--table-background-color)';
            el.style.color = 'var(--text-color)';
            el.style.borderColor = 'var(--table-border-color)';
        });
    } else {
        // Dark mode
        body.style.setProperty('--background-color', '#121212');
        body.style.setProperty('--text-color', '#ffffff');
        body.style.setProperty('--card-background-color', '#333333'); // Dark mode card background
        body.style.setProperty('--card-border-color', '#444444'); // Dark mode card border
        body.style.setProperty('--gallery-table-background', '#333333'); 
        body.style.setProperty('--gallery-border-color', '#444444'); 
        body.style.setProperty('--gallery-card-background', '#1e1e1e'); 
        body.style.setProperty('--gallery-image-filter', 'brightness(0.8)'); 
        cardTitles.forEach(title => {
            title.style.color = '#ffffff'; // Set card title color to white (dark mode)
        });
        cards.forEach(card => {
            card.style.backgroundColor = '#333333'; // Set card background color to dark gray (dark mode)
        });
        button.textContent = 'Light Mode';
        localStorage.setItem('isDarkMode', 'true');
        tableElements.forEach(el => {
            el.style.backgroundColor = 'var(--table-background-color)';
            el.style.color = 'var(--text-color)';
            el.style.borderColor = 'var(--table-border-color)';
        });
    }
    isDarkMode = !isDarkMode;
});
