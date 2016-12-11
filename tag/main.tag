<main>
  <home show={view.home}></home>
  <about show={view.about}></about>
  <shelf show={view.shelf}></shelf>
  <mentions show={view.mentions}></mentions>
  <talks show={view.talks}></talks>

  <script type = "text/javascript">
    this.view = {
      home: true,
      about: false,
      shelf: false,
      mentions: false,
      talks: false
    }
  </script>
  <script type = "text/javascript">
      r = riot.route.create()
      r('/', function () { viewswitch('home') })
      r('/about', function () { viewswitch('about') })
      r('/bookshelf', function () { viewswitch('shelf') })
      r('/mentions', function () { viewswitch('mentions') })
      r('/talks', function () { viewswitch('talks') })

      var self = this

      function viewswitch(v){
          Object.keys(self.view).forEach(function (k) {
              self.view[k] = false
          })
          self.view[v] = true
          self.update()
      }
  </script>
</main>
