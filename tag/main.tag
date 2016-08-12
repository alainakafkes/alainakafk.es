<main>
  <home show={view.home}></home>
  <about show={view.about}></about>

  <script type = "text/javascript">
    this.view = {
      home: true,
      about: false
    }
  </script>
  <script type = "text/javascript">
      r = riot.route.create()
      r('/', function () { viewswitch('home') })
      r('/about', function () { viewswitch('about') })

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
