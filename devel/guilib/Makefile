# $OpenBSD: Makefile,v 1.43 2019/01/22 19:03:08 naddy Exp $

COMMENT=	SDL C++ GUI widget library

DISTNAME=	GUIlib-1.2.1
PKGNAME=	${DISTNAME:L}
REVISION=	4

SHARED_LIBS +=	GUI                  2.0      # .0.1

CATEGORIES=	devel graphics
MASTER_SITES=	${HOMEPAGE}/src/

HOMEPAGE=	http://www.libsdl.org/projects/GUIlib/

# Public Domain
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL iconv m pthread sndio ${COMPILER_LIBCXX} usbhid

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	converters/libiconv \
		devel/sdl

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
# needs libtoolize
BUILD_DEPENDS+=		devel/libtool

do-gen:
	cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -i

.include <bsd.port.mk>
