# $OpenBSD: Makefile,v 1.16 2019/07/12 20:50:47 sthen Exp $

COMMENT=	little and fast Web crawler

DISTNAME=	larbin-2.6.3
REVISION=	3
CATEGORIES=	www

HOMEPAGE=	http://larbin.sourceforge.net/index-eng.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += adns>=1 c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=larbin/}

LIB_DEPENDS=		net/adns

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CC="${CC}" MAKE=${MAKE_PROGRAM}
MAKE_ENV=		CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
NO_TEST=		Yes

# uses makedepend
USE_X11 =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/global.cc
# Now fixup some C++ constructs not supported by clang
	find ${WRKSRC}/src -name '*.cc' -or -name '*.h' | xargs \
		sed -i -e 's|<iostream.h>|<iostream>| ; \
			s|<string.h>|<cstring>| ; \
			s|\([[:blank:]]\)cerr|\1std::cerr|g ; \
			s|\([[:blank:]]\)cout|\1std::cout|g ; \
			s|\([[:blank:]]\)endl|\1std::endl|g'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/larbin ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larbin
	${INSTALL_DATA} ${WRKSRC}/larbin.conf \
		${PREFIX}/share/examples/larbin/larbin.conf.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larbin
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/larbin

.include <bsd.port.mk>
