# $OpenBSD: Makefile,v 1.9 2012/08/12 17:13:00 jasper Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.4.8

SHARED_LIBS +=	config               9.1      # 10.2
SHARED_LIBS +=	config++             9.1      # 10.2

CATEGORIES=		devel

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

WANTLIB += m stdc++

REGRESS_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.cfg \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
