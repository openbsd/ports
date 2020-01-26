# $OpenBSD: Makefile,v 1.12 2020/01/26 11:14:30 jasper Exp $

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917
REVISION =	3

CATEGORIES =	comms

HOMEPAGE =	http://owx.chmurka.net/

# Apache 2.0 license
PERMIT_PACKAGE=	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://distfiles.sigtrap.nl/

COMPILER =		base-clang ports-gcc base-gcc

MAKE_FLAGS =	CXX="${CXX}" PORTS_CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =	Yes
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
