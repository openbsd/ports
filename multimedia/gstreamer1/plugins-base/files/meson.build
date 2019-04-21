sndio_sources = [
  'gstsndio.c',
  'sndiosink.c',
  'sndiosrc.c',
]

#sndio_dep = declare_dependency(link_with : shared_library('sndio'))
#sndio_dep = meson.get_compiler('c').find_library('sndio')
sndio_dep = cc.find_library('sndio', required : get_option('sndio'))

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
