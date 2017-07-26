# $OpenBSD: Makefile,v 1.8 2017/07/26 22:45:16 sthen Exp $

COMMENT =	tool for programming Wouxun transcievers

DISTNAME =	owx-20110917
REVISION =	1

CATEGORIES =	comms

HOMEPAGE =	http://owx.chmurka.net/

MAINTAINER =	Mitja Muzenic <mitja@kerberos.si>

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://distfiles.nl/

MAKE_FLAGS =	CXX="${CXX}" PORTS_CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =	Yes
NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/owx
	${INSTALL_DATA} ${WRKSRC}/docs/README \
		${PREFIX}/share/doc/owx

.include <bsd.port.mk>
