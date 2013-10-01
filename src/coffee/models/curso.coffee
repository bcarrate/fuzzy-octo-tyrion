define ["backbone"], (Backbone) ->
  Backbone.Model.extend
    initialize: ->
      console.log "Curso Initialized..."
      @on "all", (e) -> console.log @get("id") + ":" + @get("nombre") + " - event: " + e
    defaults:
      nombre: "----"
    validation:
      nombre:
        required: true
        minLength: 1
        msg: "Nombre obligatorio"
    url: "api/cursos"
    idAttribute: "_id"