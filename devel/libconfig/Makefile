# $OpenBSD: Makefile,v 1.11 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.4.8

SHARED_LIBS +=	config               9.1      # 10.2
SHARED_LIBS +=	config++             9.1      # 10.2

CATEGORIES=		devel

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

CONFIGURE_STYLE=	gnu

WANTLIB += m stdc++

TEST_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.cfg \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
