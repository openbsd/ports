# $OpenBSD: Makefile,v 1.25 2006/06/13 13:31:32 bernd Exp $

COMMENT=	"parallelized login hacker"
COMMENT-gui=	"GTK frontend for hydra"

VERSION=	4.6
DISTNAME=	hydra-4.6-src
PKGNAME=	hydra-${VERSION}p1
PKGNAME-gui=	hydra-gui-${VERSION}p3
CATEGORIES=    	security

HOMEPAGE=	http://thc.org/thc-hydra/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}/releases/ \
		${MASTER_SITE_PACKETSTORM:=groups/thc/}

PSEUDO_FLAVORS=	no_x11
FLAVOR?=

MULTI_PACKAGES=
SUBPACKAGE?=

CONFIGURE_STYLE=gnu dest

USE_GMAKE= 	yes
NO_REGRESS=	Yes

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	hydra pw-inspector
INSTALL_TARGET=	install
.else
USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

MULTI_PACKAGES+=-gui

ALL_TARGET= 	all
INSTALL_TARGET=	xinstall

.if !defined(PACKAGING) || !empty(SUBPACKAGE)
MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
.endif

post-configure:
	cd ${WRKSRC}/hydra-gtk && ./configure
.endif

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=	:hydra-${VERSION}*:security/hydra
WANTLIB+=	X11 atk-1.0.0.0 freetype fontconfig \
		gmodule-2.0.0.0 gobject-2.0.0.0 glib-2.0.0.0 \
		pango-1.0.0.0 pangocairo-1.0.0.0 cairo \
		pangoft2-1.0.0.0
.else
WANTLIB+=	ssl crypto
.endif

post-extract:
	${CHMOD} -R u+w ${WRKDIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
