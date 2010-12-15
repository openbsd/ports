# $OpenBSD: Makefile,v 1.7 2010/12/15 09:31:46 jasper Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.4.6

SHARED_LIBS=		config		9.0 \
			config++	9.0

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

WANTLIB += c m stdc++

REGRESS_TARGET = test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/examples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
