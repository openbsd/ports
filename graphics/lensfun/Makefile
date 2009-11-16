# $OpenBSD: Makefile,v 1.1.1.1 2009/11/16 11:54:40 sthen Exp $

COMMENT=	library to adjust for photographic lens characteristics
DISTNAME=	lensfun-0.2.3
SHARED_LIBS=	lensfun 0.0

CATEGORIES=	graphics
HOMEPAGE=	http://lensfun.berlios.de/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++ z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=lensfun/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python devel/gettext
MODPY_RUNDEP=		No
BUILD_DEPENDS=		::devel/doxygen

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			png::graphics/png

MAKE_FLAGS=		V=1 INSTDIR_manual=${PREFIX}/share/doc/lensfun \
			LIBlensfun_VERSION=${LIBlensfun_VERSION}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	${MODPY_BIN} ./configure
CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/lensfun \
			--libdir=${PREFIX}/lib

NO_REGRESS =		Yes

CFLAGS+=		-I/usr/include -I${LOCALBASE}/include/libpng
MAKE_FILE=		GNUmakefile

ALL_TARGET =		all tests

SUBST_VARS =		MAKE_PROGRAM

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/ac.py

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out/posix/release/tmod ${PREFIX}/bin

.include <bsd.port.mk>
