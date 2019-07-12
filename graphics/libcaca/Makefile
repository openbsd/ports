# $OpenBSD: Makefile,v 1.35 2019/07/12 21:02:21 sthen Exp $

COMMENT=		color ascii art library

DISTNAME=		libcaca-0.99.beta19
PKGNAME=		libcaca-0.99.19
SHARED_LIBS +=  caca           1.2               # .0.99
CATEGORIES=		graphics
REVISION=		2

HOMEPAGE=		http://caca.zoy.org/wiki/libcaca

# LGPLv2.1/Do What The Fuck You Want To Public License
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses m z

MASTER_SITES=		http://caca.zoy.org/files/libcaca/ \
			https://distfiles.nl/

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--disable-x11 \
			--disable-imlib2
.else
LIB_DEPENDS =    	graphics/imlib2
WANTLIB +=		X11 Xext freetype xcb Imlib2>=1
.endif

MAKE_FLAGS=		V=1

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-doc \
			--disable-slang \
			--disable-ruby \
			--disable-java \
			--disable-csharp \
			--disable-cxx \
			--disable-zzuf \
			--disable-cppunit

# Tests are bogus: assume gmake, assume Windows.
NO_TEST =		Yes

.include <bsd.port.mk>
