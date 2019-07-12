# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:37 sthen Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.7.2
REVISION=		1

SHARED_LIBS +=  config               11.0     # 11.2
SHARED_LIBS +=  config++             11.0     # 11.2

CATEGORIES=		devel

HOMEPAGE=		https://hyperrealm.github.io/libconfig/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://hyperrealm.github.io/libconfig/dist/

CONFIGURE_STYLE=	gnu

TEST_TARGET =		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.cfg \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
