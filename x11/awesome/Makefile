# $OpenBSD: Makefile,v 1.4 2008/01/22 18:51:46 merdely Exp $

COMMENT=		fast, small, dynamic and awesome window manager

V=			2.1
DISTNAME=		awesome-$V

CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xinerama Xrandr Xft c Xau Xdmcp \
			Xrender expat fontconfig freetype glitz iconv \
			intl m png z

MASTER_SITES=		${HOMEPAGE}/download/

LIB_DEPENDS=		cairo.>=6::graphics/cairo	\
			confuse.>=1::devel/libconfuse
BUILD_DEPENDS=		::textproc/asciidoc	\
			::textproc/xmlto

CONFIGURE_STYLE=	gnu

MAKE_FLAGS=		AWESOME_CFLAGS=""

USE_X11=		Yes

NO_REGRESS=		Yes

pre-install:
	@perl -pi -e 's|Mod4|Mod1|g' ${WRKSRC}/awesomerc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/awesome/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/awesomerc ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/awesome/

.include <bsd.port.mk>
