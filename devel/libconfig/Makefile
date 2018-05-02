# $OpenBSD: Makefile,v 1.19 2018/05/02 19:36:50 landry Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.7.2

SHARED_LIBS +=  config               11.0     # 11.2
SHARED_LIBS +=  config++             11.0     # 11.2

CATEGORIES=		devel

HOMEPAGE=		https://hyperrealm.github.io/libconfig/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

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
