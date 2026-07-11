COMMENT =	set of programs to build and inspect windows installer files

V =		0.106
DIST_TUPLE +=	gnome GNOME msitools v${V} .
WRKDIST =	${WRKDIR}/msitools-v${V}

CATEGORIES =	devel sysutils

HOMEPAGE =	https://gitlab.gnome.org/GNOME/msitools

# LGPLv2, Public Domain, GPLv2, GPLv3, MS-RL
PERMIT_PACKAGE =	Yes

COMPILER_LANGS =	c

MODULES =		devel/meson

BUILD_DEPENDS = lang/vala,-main \
		devel/gettext,-tools \
		devel/bison \
		devel/bats
LIB_DEPENDS =	archivers/gcab \
		devel/glib2 \
		devel/libgsf \
		textproc/libxml
TEST_DEPENDS =	devel/bats \
		sysutils/coreutils

SHARED_LIBS +=  msi-1.0                   0.0 # 0.0

WANTLIB += c gcab-1.0 gio-2.0 glib-2.0 gobject-2.0 gsf-1 intl
WANTLIB += xml2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

pre-test:
	ln -fs ${LOCALBASE}/bin/gsha1sum ${WRKDIR}/bin/sha1sum

.include <bsd.port.mk>
