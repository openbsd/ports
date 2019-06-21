# $OpenBSD: Makefile,v 1.1.1.1 2019/06/21 20:46:36 rsadowski Exp $
#
COMMENT =	unit testing and mocking framework for C/C++

V =		3.8
DISTNAME =	cpputest-${V}

CATEGORIES =	devel

HOMEPAGE =	https://cpputest.github.io

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/cpputest/cpputest/releases/download/v${V}/

MODULES =		devel/cmake

# Stop the noise with modern compiler
CXXFLAGS +=		-Wno-zero-as-null-pointer-constant \
			-Wno-c++98-compat \
			-Wno-inconsistent-missing-destructor-override \
			-Wno-c++98-compat-pedantic \
			-Wno-cast-qual

# Many tests fails with enabled leak detection
CONFIGURE_ARGS +=	-DMEMORY_LEAK_DETECTION=OFF

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cpputest
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/cpputest

.include <bsd.port.mk>
