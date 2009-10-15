# $OpenBSD: Makefile,v 1.13 2009/10/15 23:27:09 jasper Exp $

COMMENT=		color ascii art library

DISTNAME=		libcaca-0.99.beta16
PKGNAME=		libcaca-0.99.16
SHARED_LIBS +=  caca           0.0               # .0.99
CATEGORIES=		graphics

# LGPLv2.1/Do What The Fuck You Want To Public License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		c ncurses m z

HOMEPAGE=		http://caca.zoy.org/
MASTER_SITES=		${HOMEPAGE}/files/libcaca/ \
			http://www.phil.uu.nl/~lievisse/distfiles/

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::misc/zzuf
REGRESS_DEPENDS=	::devel/cppunit

USE_LIBTOOL=		Yes

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11 \
			--disable-imlib2
.else
LIB_DEPENDS=    	Imlib2.>=1::graphics/imlib2
USE_X11=		Yes
WANTLIB+=		X11 Xau Xdmcp Xext freetype pthread-stubs xcb
.endif

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-doc \
			--disable-slang \
			--disable-ruby \
			--disable-python \
			--disable-csharp \
			--disable-cxx

.include <bsd.port.mk>
