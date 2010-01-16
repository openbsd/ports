# $OpenBSD: Makefile,v 1.36 2010/01/16 11:30:23 sthen Exp $

COMMENT-main=	parallelized login hacker
COMMENT-gui=	GTK frontend for hydra

VERSION=	5.4
DISTNAME=	hydra-5.4-src
PKGNAME-main=	hydra-${VERSION}p0
PKGNAME-gui=	hydra-gui-${VERSION}p2
CATEGORIES=    	security

HOMEPAGE=	http://thc.org/thc-hydra/

# GPLv2 + restrictions in LICENCE.HYDRA
PERMIT_PACKAGE_CDROM=	no charge
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	no charge
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=groups/thc/}

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES=	-main

CONFIGURE_STYLE=gnu dest

USE_GMAKE= 	Yes
NO_REGRESS=	Yes
MAKE_FLAGS=	CC=${CC}

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	hydra pw-inspector

do-install:
	cd ${WRKBUILD}; $(INSTALL_PROGRAM) hydra pw-inspector $(PREFIX)/bin
.else
USE_X11=	Yes

MULTI_PACKAGES+=-gui

ALL_TARGET= 	all

MODULES=	devel/gettext

post-configure:
	cd ${WRKSRC}/hydra-gtk && ./configure
.endif

LIB_DEPENDS-main=
RUN_DEPENDS-main=
WANTLIB-main=	${WANTLIB} ssl crypto
LIB_DEPENDS-gui=gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-gui=:hydra-${VERSION}:security/hydra,-main \
		${MODGETTEXT_RUN_DEPENDS}
WANTLIB-gui=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes \
		Xext Xi Xinerama Xrandr Xrender atk-1.0 freetype fontconfig \
		gio-2.0 gmodule-2.0 gobject-2.0 glib-2.0 glitz png \
		pango-1.0 pangocairo-1.0 pixman-1 cairo z expat \
		pangoft2-1.0 pthread-stubs xcb

post-extract:
	${CHMOD} -R u+w ${WRKDIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
