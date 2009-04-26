# $OpenBSD: Makefile,v 1.10 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=		fast, small, dynamic and awesome window manager

DISTNAME=		awesome-2.3
PKGNAME=		${DISTNAME}p1

CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xinerama Xrandr Xau Xdmcp Xrender \
			c cairo expat fontconfig freetype glitz \
			gmodule-2.0 glib-2.0 gobject-2.0 iconv intl \
			m pixman-1 png z

MASTER_SITES=		${HOMEPAGE}/download/

LIB_DEPENDS=		confuse.>=1::devel/libconfuse \
			Imlib2.>=2::graphics/imlib2 \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango
BUILD_DEPENDS=		::devel/doxygen \
			::textproc/xmlto \
			::textproc/asciidoc

CONFIGURE_STYLE=	gnu

MAKE_FLAGS=		AWESOME_CFLAGS=""

USE_X11=		Yes

MODULES=		lang/python

NO_REGRESS=		Yes

pre-install:
	@perl -pi -e 's|Mod4|Mod1|g' ${WRKSRC}/awesomerc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/awesome/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/awesomerc ${PREFIX}/share/examples/awesome/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/awesome/

.include <bsd.port.mk>
