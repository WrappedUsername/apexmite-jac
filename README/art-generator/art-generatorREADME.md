# Art Generator

```yml
Three.js DI avatar and asset generator:
```

Sure thing! Here are the steps to create an Angular landing page using TypeScript, three.js, and Angular CLI:

First, you'll need to install Angular CLI by running npm install -g @angular/cli. This will give you the necessary tools to create an Angular application.
Next, navigate to your project directory in a terminal or command prompt and run ng new my-app, where "my-app" is the name of your new Angular application.
Once the installation process has completed, navigate into your app's directory by running cd my-app.
To create an Angular component for your landing page, use the following command: ng generate component landing-page. This will generate a basic template for your component in the src/app folder.
Open the landing-page folder and update the landing-page.component.html file to include the HTML structure of your landing page. For example:

```html
<div id="landing-page">

  <h1>Welcome to my Angular landing page!</h1>

  <p>This is some sample text for my landing page.</p>

</div>
```

In the landing-page folder, update the landing-page.component.css file with your desired styles for the landing page. For example:

```css
body {

  background-color: #f0f0f0;

}

h1 {

  color: blue;

}

p {

  font-size: 24px;

}
```

To add three.js to your Angular application, you'll need to install it first by running npm install three. Then, import the library in your component's HTML file using a script tag like this:

```bash
yarn add @angular-three/core
yarn add three
yarn add @types/three
```

In the landing-page folder, create a new file called app.component.ts. This is where you'll write your TypeScript code to make use of three.js in your Angular application. For example:

```typescript

import { Component } from '@angular/core';

import * as THREE from 'three';

@Component({

  selector: 'app-root',

  templateUrl: './landing-page.component.html'

})

export class AppComponent {

  constructor() {

    // Create a new scene, camera, and renderer for the three.js library

    const scene = new THREE.Scene();

    const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

    const renderer = new THREE.WebGLRenderer({ antialias: true });

    // Set the size of the renderer to fit the screen

    renderer.setSize( window.innerWidth, window.innerHeight );

    document.body.appendChild( renderer.domElement );

  }

}
```

Finally, add a new entry to your app-routing.module.ts file to route to the landing page component:

```typescript
import { NgModule } from '@angular/core';

import { RouterModule, Routes } from '@angular/router';

import { LandingPageComponent } from './landing-page/landing-page.component'; const routes: Routes = [

  { path: '', component: LandingPageComponent },

];

@NgModule({

  imports: [ RouterModule.forRoot(routes) ],
})
```
