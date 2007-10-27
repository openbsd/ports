# $OpenBSD: Makefile,v 1.2 2007/10/27 12:34:55 merdely Exp $

COMMENT=		fast, small, dynamic and awesome window manager

V=1.3
DISTNAME=		awesome-${V}

CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xinerama Xrandr Xft c

MASTER_SITES=		${HOMEPAGE}/download/

LIB_DEPENDS=		config::devel/libconfig

CFLAGS+=                -I. -I${X11BASE}/include -I${X11BASE}/include/freetype2 \
			-I${LOCALBASE}/include -DVERSION=\\\"$V\\\" \
			$$(pkg-config --cflags libconfig)
LDFLAGS+=               -L${X11BASE}/lib -L${LOCALBASE}/lib \
			-lX11 -lXext -lXrandr -lXinerama -lXft \
			$$(pkg-config --libs libconfig)
MAKE_FLAGS=             CC=${CC} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=             MANPREFIX=${PREFIX}/man \
			PREFIX=${PREFIX}

USE_X11=		Yes

NO_REGRESS=		Yes

post-patch:
	@perl -pi -e 's|Mod4|Mod1|g' ${WRKSRC}/awesomerc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/awesome/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/awesomerc ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/awesome/

.include <bsd.port.mk>
