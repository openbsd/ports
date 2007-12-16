# $OpenBSD: Makefile,v 1.3 2007/12/16 21:27:14 pyr Exp $

COMMENT=		fast, small, dynamic and awesome window manager

V=2.0
DISTNAME=		awesome-$V

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

LIB_DEPENDS=		cairo.>=6::graphics/cairo	\
			confuse::devel/libconfuse
BUILD_DEPENDS=		::textproc/asciidoc	\
			::textproc/xmlto

CFLAGS+=		-I. -I${X11BASE}/include \
			-I${X11BASE}/include/freetype2 \
			-I${LOCALBASE}/include \
			$$(pkg-config --cflags libconfuse) \
			$$(pkg-config --cflags cairo) \
			-DVERSION=\\\"$V\\\" \
			-DRELEASE=\\\"Fruit_Fly\\\"

LDFLAGS+=		-L${X11BASE}/lib -L${LOCALBASE}/lib \
			-lX11 -lXext -lXrandr -lXinerama -lXft \
			$$(pkg-config --libs libconfuse) \
			$$(pkg-config --libs cairo)

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
