
<script>
  // bootstrap
  import '$lib/scss/styles.scss';

  // favicons
  import favicon from '$lib/assets/favicon.ico';
  import favicon16x16 from '$lib/assets/favicon-16x16.png';
  import favicon32x32 from '$lib/assets/favicon-32x32.png';
  import appletouchicon from '$lib/assets/apple-touch-icon.png';
  import androidchrome192x192 from '$lib/assets/android-chrome-192x192.png';
  import androidchrome512x512 from '$lib/assets/android-chrome-512x512.png';
  import webmanifest from '$lib/assets/site.webmanifest';

  // components
  import Navbar from '$lib/components/navbar.svelte';

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
  <link rel="apple-touch-icon" sizes="180x180" href={appletouchicon}>
  <link rel="icon" type="image/png" sizes="32x32" href={favicon32x32}>
  <link rel="icon" type="image/png" sizes="16x16" href={favicon16x16}>
  <link rel="manifest" href={webmanifest}>
</svelte:head>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <center><a class="navbar-brand" href="/">GardenGnome</a></center>
    <button 
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="/seeds">Seeds</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/plants">Plants</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/locations">Locations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/beds">Beds</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

{@render children()}
