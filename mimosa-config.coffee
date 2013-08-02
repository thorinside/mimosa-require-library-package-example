exports.config = {
  modules: ['lint', 'server', 'require', 'require-library-package', 'minify', 'live-reload']

  server:                      # configuration for server when server option is enabled via CLI
    path: 'server.iced'      # valid when defaultServer.enabled: false, path to file for provided
    views:                     # configuration for the view layer of your application
      compileWith: 'handlebars'      # Valid options: "jade", "hogan", "html", "ejs", "handlebars".
      extension: 'hbs'        # extension of your server views

  libraryPackage:           # Configuration for library packaging module
    ###
    # "packaging" provides three options for packaging your library. By default all are enabled.
    # Each option will deliver the compiled asset to a folder named for the packaging type.
    # - "shimmedWithDependencies" a fully batteries included version of your library. Includes
    # an AMD shim (Almond) and includes all dependencies.
    # - "noShimNoDependencies" does not provide an AMD shim and excludes those dependencies
    # listed in removeDependencies
    # - "noShimWithDependencies" does not provide a shim and does not excluded dependencies
    # listed in removeDependencies
    ###
    # packaging:
      # shimmedWithDependencies: true
      # noShimNoDependencies: true
      # noShimWithDependencies: true
    ###
    # Properties passed the `overrides` objects are passed straight to the r.js optimizer for the
    # given packaging type. Any settings in `overrides` will overwrite all other settings,
    # including, for instance, the `name` property.
    ###
    # overrides:
      # shimmedWithDependencies: {}
      # noShimNoDependencies: {}
      # noShimWithDependencies: {}
    # outFolder: "build"      # the name of the folder, relative to the root of the project,
                              # to place the packaged output.
    globalName: "TestClient"        # Required if shimmedWithDependencies is set to true. The global
                              # name of the library for use in non module-managed situations.
                              # i.e. "$" or "Backbone"
    name: "tester.js"               # Name of library.  Ex: "jquery.foo.js". This will be used as the
                              # output file name for the optimization.  Required.
    main: "testclient"               # The AMD path to the root/entry point of your library.
    removeDependencies: [ "jquery" ]  # A list of AMD paths to dependencies to exclude from the library.
                              # For instance, "jquery" or "vendor/openlayers". Libraries you
                              # expect users of the library to include themselves.

}