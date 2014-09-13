# $OpenBSD: Makefile,v 1.53 2014/09/13 18:09:22 brad Exp $

COMMENT-main=	parallelized login hacker
COMMENT-gui=	GTK frontend for hydra

VERSION=	7.1
DISTNAME=	hydra-${VERSION}-src
PKGNAME-main=	hydra-${VERSION}
PKGNAME-gui=	hydra-gui-${VERSION}
CATEGORIES=    	security
REVISION-main=	3

HOMEPAGE=	http://thc.org/thc-hydra/

# GPLv3 + restrictions in LICENCE.HYDRA
PERMIT_PACKAGE_CDROM=	no charge
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m

MASTER_SITES =  http://www.thc.org/releases/
MASTER_SITES +=	${MASTER_SITE_PACKETSTORM:=groups/thc/}

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES=	-main

CONFIGURE_STYLE=gnu dest

USE_GMAKE= 	Yes
NO_TEST=	Yes
MAKE_FLAGS=	CC=${CC}
CFLAGS +=	-I${LOCALBASE}/include

.if ${FLAVOR:Mno_x11}
ALL_TARGET=	hydra pw-inspector

do-install:
	cd ${WRKBUILD}; $(INSTALL_PROGRAM) hydra pw-inspector $(PREFIX)/bin
.else

MULTI_PACKAGES+=-gui

ALL_TARGET= 	all

MODULES=	devel/gettext

post-configure:
	cd ${WRKSRC}/hydra-gtk && ./configure
.endif

LIB_DEPENDS-main=	databases/mariadb,-main \
			databases/postgresql,-main \
			devel/libidn \
			devel/pcre \
			security/libssh
RUN_DEPENDS-main=
WANTLIB-main=	c crypto idn m mysqlclient pcre pq ssh ssl
LIB_DEPENDS-gui=x11/gtk+2 \
		${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-gui=hydra-${VERSION}:security/hydra,-main \
		${MODGETTEXT_RUN_DEPENDS}
WANTLIB-gui=	${WANTLIB} GL X11 Xcomposite Xcursor Xdamage Xfixes \
		Xext Xi Xinerama Xrandr Xrender atk-1.0 freetype fontconfig \
		gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 \
		gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0 gthread-2.0 png \
		pango-1.0 pangocairo-1.0 pixman-1 cairo z expat \
		pangoft2-1.0 pthread pthread-stubs xcb xcb-render \
		xcb-shm

post-extract:
	chmod -R u+w ${WRKDIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
