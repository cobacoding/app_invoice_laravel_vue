// require('./bootstrap');
//ubah dengan ES6/ESM dengan menggunakan import
import './bootstrap';

import { createApp } from 'vue'

import app from './components/app.vue'

import router from './router/index.js'

// createApp(app).mount("#app")
// createApp(app).use(router).mount("#app")
createApp(app)
    .use(router) // gunakan router
    .mount('#app');
