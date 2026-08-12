COMMENT-main=	parallelized network logon cracker
COMMENT-gui=	GTK frontend for hydra

VERSION=	9.7
REVISION-main=	0
PKGNAME-main=	hydra-${VERSION}
PKGNAME-gui=	hydra-gui-${VERSION}

CATEGORIES=	security

GH_ACCOUNT =	vanhauser-thc
GH_PROJECT =	thc-hydra
GH_TAGNAME =	v${VERSION}

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE=	Yes

WANTLIB =	c

WANTLIB-main =	${WANTLIB}
WANTLIB-main += apr-1 aprutil-1 crypto curses freerdp3 gcrypt idn m
WANTLIB-main += mariadb memcached pcre2-8 pq ssh ssl svn_client-1 svn_subr-1
WANTLIB-main += sybdb winpr3 z

WANTLIB-gui =	${WANTLIB}
WANTLIB-gui += atk-1.0 cairo cairo-gobject gdk_pixbuf-2.0 gdk-3 gio-2.0
WANTLIB-gui += glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB-gui += pangocairo-1.0

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=	-main -gui

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

CONFIGURE_ARGS=	--nostrip \
		--with-ssl=prefix="/usr/include" \
		--with-ssl-lib=prefix="/usr/lib" \
		--prefix=${LOCALBASE}
# more verbose output, can help when the script is doing silly things
#CONFIGURE_ARGS += --debug

LIB_DEPENDS-main=	databases/freetds \
			databases/mariadb,-main \
			databases/postgresql,-main \
			devel/libidn \
			devel/libmemcached \
			devel/pcre2 \
			devel/subversion \
			security/libgcrypt \
			security/libssh \
			x11/freerdp

LIB_DEPENDS-gui=x11/gtk+3
RUN_DEPENDS-gui=${BASE_PKGPATH},-main \
		devel/desktop-file-utils
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gui}
ALL_TARGET=	hydra pw-inspector
.else
AUTOCONF_VERSION = 2.71
AUTOMAKE_VERSION = 1.16
BUILD_DEPENDS += ${MODGNU_AUTOCONF_DEPENDS} \
		 ${MODGNU_AUTOMAKE_DEPENDS}
MAKE_ENV +=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${PREFIX}/share/doc/hydra
	mv ${PREFIX}/etc/* ${PREFIX}/share/doc/hydra/ && rm -r ${PREFIX}/etc

.include <bsd.port.mk>
