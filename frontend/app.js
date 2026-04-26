async function loadTab(tab) {
    const res = await fetch(`/api/${tab}`);
    const data = await res.json();

    const container = document.getElementById("content");

    container.innerHTML = data.map(item => {
        if (tab === "projects") {
            return `
                <div class="card">
                    <h3>${item.title}</h3>
                    <p>${item.description}</p>
                    <p><strong>${formatDate(item.start_date)} - ${formatDate(item.end_date)}</strong></p>
                    <small>${(item.tech_stack || []).join(", ")}</small>
                </div>
            `;
        }
    
        if (tab === "experience") {
            return `
                <div class="card">
                    <h3>${item.company}</h3>
                    <strong>${item.role}</strong>
                    <p>${formatDate(item.start_date)} - ${formatDate(item.end_date)}</p>
                    <p>${item.description}</p>
                </div>
            `;
        }
    
        if (tab === "education") {
            return `
                <div class="card">
                    <h3>${item.institution}</h3>
                    <p>${item.degree} - ${item.field}</p>
                    <p>${formatDate(item.start_date)} - ${formatDate(item.end_date)}</p>
                </div>
            `;
        }
    }).join("");
}
document.querySelectorAll("button[data-tab]").forEach(btn => {
    btn.addEventListener("click", () => {
        loadTab(btn.dataset.tab);
    });
});

function formatDate(date) {
    if (!date) return "Present";
    return new Date(date).getFullYear();
}

// default tab
loadTab("projects");

window.loadTab = loadTab; // IMPORTANT FIX
