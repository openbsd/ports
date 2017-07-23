# $OpenBSD: Makefile,v 1.17 2017/07/23 09:26:26 espie Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.5
REVISION =		0

SHARED_LIBS +=  config               10.0     # 11.0
SHARED_LIBS +=  config++             10.0     # 11.0

CATEGORIES=		devel

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

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
