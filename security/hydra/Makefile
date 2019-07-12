# $OpenBSD: Makefile,v 1.61 2019/07/12 20:49:03 sthen Exp $

COMMENT-main=	parallelized network logon cracker
COMMENT-gui=	GTK frontend for hydra

VERSION=	8.6
PKGNAME-main=	hydra-${VERSION}
PKGNAME-gui=	hydra-gui-${VERSION}
REVISION-main=	0

CATEGORIES=	security

GH_ACCOUNT =	vanhauser-thc
GH_PROJECT =	thc-hydra
GH_TAGNAME =	${VERSION}

HOMEPAGE=	https://thc.org/thc-hydra/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE=	Yes

WANTLIB=	c z

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES=	-main

CONFIGURE_STYLE=gnu

USE_GMAKE= 	Yes
NO_TEST=	Yes
MAKE_FLAGS=	CC=${CC}

CONFIGURE_ARGS =	--with-ssl=prefix="/usr/include" \
			--with-ssl-lib=prefix="/usr/lib" \
			--prefix=${LOCALBASE}

.if ${FLAVOR:Mno_x11}
ALL_TARGET=	hydra pw-inspector
.else
MULTI_PACKAGES+=-gui
ALL_TARGET= 	all
.endif

LIB_DEPENDS-main=	databases/mariadb,-main \
			databases/postgresql,-main \
			devel/libidn \
			devel/pcre \
			security/libgcrypt \
			security/libssh
RUN_DEPENDS-main=

WANTLIB-main=	${WANTLIB} m crypto curses gcrypt idn mysqlclient pcre pq ssh ssl

LIB_DEPENDS-gui=x11/gtk+2

RUN_DEPENDS-gui=${BASE_PKGPATH},-main

WANTLIB-gui += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gui += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gui += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB-gui += intl pango-1.0 pangocairo-1.0 pangoft2-1.0 ${WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${PREFIX}/share/doc/hydra
	mv ${PREFIX}/etc/* ${PREFIX}/share/doc/hydra/ && rm -r ${PREFIX}/etc

.include <bsd.port.mk>
