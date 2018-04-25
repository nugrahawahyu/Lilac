<template>
  <footer class="footer">
    <div class="mdl-grid">
      <div class="mdl-cell mdl-cell--12-col">
        Website by
        <a href="https://twitter.com/wahyucnugraha" target="_blank">Wahyu Nugraha</a>
      </div>
      <div class="mdl-cell mdl-cell--12-col" style="margin-top: 0;">
        <ul class="social-collection social-collection">
          <li>
            <a href="https://github.com/nugrahawahyu"><i class="fab fa-github"></i></a>
          </li>
          <li>
            <a href="https://twitter.com/wahyucnugraha"><i class="fab fa-twitter"></i></a>
          </li>
        </ul>
      </div>
    </div>
  </footer>
</template>

<style scoped lang="scss">
.footer {
  color: #666;
  font-size: 12px;
  background-color: #fafafa;
  padding: 44px 0;
  text-align: center;

  a {
    font-weight: 600;
    color: #666;
    text-decoration: none;
  }
}

.social-collection {
  margin: 0;
  list-style: none;

  &--inline {
    display: inline-block;
  }

  li {
    font-size: 1rem;
    display: inline-block;
    margin-right: 24px;
  }
}
</style>
