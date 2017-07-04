# $OpenBSD: Makefile,v 1.58 2017/07/04 15:04:49 gonzalo Exp $

COMMENT-main=	parallelized network logon cracker
COMMENT-gui=	GTK frontend for hydra

VERSION=	8.5
PKGNAME-main=	hydra-${VERSION}
PKGNAME-gui=	hydra-gui-${VERSION}
CATEGORIES=	security

GH_ACCOUNT =	vanhauser-thc
GH_PROJECT =	thc-hydra
GH_TAGNAME =	v${VERSION}

HOMEPAGE=	https://thc.org/thc-hydra/

# AGPLv3 (GNU Affero Public License)
PERMIT_PACKAGE_CDROM=	Yes

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
			security/libssh
RUN_DEPENDS-main=

WANTLIB-main=	${WANTLIB} m crypto curses idn mysqlclient pcre pq ssh ssl

LIB_DEPENDS-gui=x11/gtk+2

RUN_DEPENDS-gui=${PKGPATH},-main

WANTLIB-gui=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 intl ${WANTLIB}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/{README,LICENSE} ${PREFIX}/share/doc/hydra
	mv ${PREFIX}/etc/* ${PREFIX}/share/doc/hydra/ && rm -r ${PREFIX}/etc

.include <bsd.port.mk>
