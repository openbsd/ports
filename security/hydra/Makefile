# $OpenBSD: Makefile,v 1.18 2005/02/11 19:46:22 sturm Exp $

COMMENT=		"parallelized login hacker"

DISTNAME=		hydra-4.6-src
PKGNAME=		${DISTNAME:S/-src//}
CATEGORIES=    		security

HOMEPAGE=		http://www.thc.org/

MASTER_SITES=		${HOMEPAGE}/releases/ \
			${MASTER_SITE_PACKETSTORM:=groups/thc/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu dest


USE_GMAKE=  yes
MAKE_FLAGS=     CC="${CC}" OPTS="${CFLAGS}"

post-extract:
		@chmod -R u+w ${WRKDIST}

MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}"
FAKE_FLAGS=		INSTALL="${WRKINST}${PREFIX}/bin"

FLAVORS= no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET= hydra pw-inspector
.else
USE_X11=	Yes
ALL_TARGET= all
LIB_DEPENDS+=   gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 pangox-1.0.0.0::devel/pango
WANTLIB+=   iconv intl X11 Xext Xft freetype Xrender Xinerama Xcursor \
            fontconfig gmodule-2.0.0.0 gobject-2.0.0.0 pangoxft-1.0.0.0 \
            glib-2.0.0.0 pango-1.0.0.0 atk-1.0.0.0
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hydra
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/hydra

.include <bsd.port.mk>
