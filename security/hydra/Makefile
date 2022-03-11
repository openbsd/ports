COMMENT-main=	parallelized network logon cracker
COMMENT-gui=	GTK frontend for hydra

VERSION=	9.2
PKGNAME-main=	hydra-${VERSION}
PKGNAME-gui=	hydra-gui-${VERSION}

CATEGORIES=	security

GH_ACCOUNT =	vanhauser-thc
GH_PROJECT =	thc-hydra
GH_TAGNAME =	v${VERSION}

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE=	Yes

WANTLIB =	c z

WANTLIB-main =	${WANTLIB} crypto curses freerdp2 gcrypt idn m mariadb
WANTLIB-main +=	memcached pcre pq ssh ssl winpr2

WANTLIB-gui =	${WANTLIB}
WANTLIB-gui +=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gui +=	Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gui +=	gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB-gui +=	intl pango-1.0 pangocairo-1.0 pangoft2-1.0 harfbuzz

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=	-main -gui

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"
PATCHORIG=	.orig.port

CONFIGURE_ARGS=	--nostrip \
		--with-ssl=prefix="/usr/include" \
		--with-ssl-lib=prefix="/usr/lib" \
		--prefix=${LOCALBASE}

LIB_DEPENDS-main=	databases/mariadb,-main \
			databases/postgresql,-main \
			devel/libidn \
			devel/libmemcached \
			devel/pcre \
			security/libgcrypt \
			security/libssh \
			x11/freerdp

LIB_DEPENDS-gui=x11/gtk+2
RUN_DEPENDS-gui=${BASE_PKGPATH},-main
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gui}
ALL_TARGET=	hydra pw-inspector
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README.md,LICENSE} ${PREFIX}/share/doc/hydra
	mv ${PREFIX}/etc/* ${PREFIX}/share/doc/hydra/ && rm -r ${PREFIX}/etc

.include <bsd.port.mk>
