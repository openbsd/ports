# $OpenBSD: Makefile,v 1.10 2019/05/12 16:29:44 danj Exp $

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917
REVISION =	3

CATEGORIES =	comms

HOMEPAGE =	http://owx.chmurka.net/

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://distfiles.nl/

COMPILER =		base-clang ports-gcc base-gcc

MAKE_FLAGS =	CXX="${CXX}" PORTS_CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =	Yes
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
