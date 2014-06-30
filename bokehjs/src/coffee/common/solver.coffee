
define [
  "backbone",
  "underscore",
  "kiwi",
], (Backbone, _, kiwi) ->

  class Solver

    constructor: () ->
      @solver = new kiwi.Solver()

    update_variables: () ->
      @solver.updateVariables()
      @trigger('layout_update')

    add_constraint: (constraint) ->
      @solver.addConstraint(constraint)

    add_edit_variable: (variable, strength=kiwi.Strength.strong) ->
      @solver.addEditVariable(variable, strength)

    suggest_value: (variable, value) ->
      @solver.suggestValue(variable, value)

  _.extend(Solver.prototype,  Backbone.Events)

  return Solver