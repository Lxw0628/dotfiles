// ==UserScript==
// @name            Sidebar 切换
// @include         main
// @startup         UC.toggleSidebar.startup(win);
// @shutdown        UC.toggleSidebar.shutdown(win);
// @author          Lxw0628
// ==/UserScript==

UC.toggleSidebar = {
    sidebarButton: SidebarController.sidebarContainer,

    toggleSidebarHandler: function (e) {
        if (e.ctrlKey && e.altKey && e.key === "e") {
            SidebarController.handleToolbarButtonClick();
        }
    },

    startup: function (window) {
        if (!this.sidebarButton) return;
        window.addEventListener("keydown", this.toggleSidebarHandler);
    },

    shutdown(window) {
        if (!this.sidebarButton) return;
        window.removeEventListener("keydown", this.toggleSidebarHandler);
    },
};
