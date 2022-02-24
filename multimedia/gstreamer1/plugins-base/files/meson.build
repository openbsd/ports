sndio_sources = [
  'gstsndio.c',
  'sndiosink.c',
  'sndiosrc.c',
]

sndio_dep = dependency('sndio', required : get_option('sndio'))

if sndio_dep.found()
  gstsndio = library('gstsndio',
    sndio_sources,
    c_args : gst_plugins_base_args,
    include_directories: [configinc, libsinc],
    dependencies : glib_deps + [sndio_dep, audio_dep, tag_dep, gst_dep, gst_base_dep],
    install : true,
    install_dir : plugins_install_dir,
 )
  pkgconfig.generate(gstsndio, install_dir : plugins_pkgconfig_install_dir)
endif
