GH_ACCOUNT =	LinuxBeaver
CATEGORIES =	graphics

# GPL v3
PERMIT_PACKAGE =	Yes

WANTLIB += gegl-0.4 glib-2.0 gobject-2.0
# XXX not all of them need intl but it's simpler this way
WANTLIB += intl

MODULES = 	devel/meson

LIB_DEPENDS =	graphics/gegl04

NO_TEST =	Yes
FILESDIR =	../files

GEGL_PLUGINS =	lib/gegl-0.4
SUBST_VARS =	GEGL_PLUGINS DOCDIR
DOCDIR =	${PREFIX}/share/doc/gegl-filters

# the weird config.h that ships is unnecessary except for the GETTEXT_PACKAGE
# define
do-gen:
	cp ${FILESDIR}/config.h ${WRKSRC}

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${GEGL_PLUGINS}
	cd ${WRKBUILD} && ${INSTALL_PROGRAM} ${PLUGIN} ${PREFIX}/${GEGL_PLUGINS}
