
<script>
  // bootstrap
  import 'bootstrap/scss/bootstrap.scss';

  import favicon from '$lib/assets/favicon.ico';
  import favicon16x16 from '$lib/assets/favicon-16x16.png';
  import favicon32x32 from '$lib/assets/favicon-32x32.png';
  import appletouchicon from '$lib/assets/apple-touch-icon.png';
  import androidchrome192x192 from '$lib/assets/android-chrome-192x192.png';
  import androidchrome512x512 from '$lib/assets/android-chrome-512x512.png';
  import webmanifest from '$lib/assets/site.webmanifest';

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
  <link rel="apple-touch-icon" sizes="180x180" href={appletouchicon}>
  <link rel="icon" type="image/png" sizes="32x32" href={favicon32x32}>
  <link rel="icon" type="image/png" sizes="16x16" href={favicon16x16}>
  <link rel="manifest" href={webmanifest}>
</svelte:head>

{@render children()}
