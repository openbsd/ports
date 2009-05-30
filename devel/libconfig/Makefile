# $OpenBSD: Makefile,v 1.6 2009/05/30 21:58:37 jasper Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.3.2

SHARED_LIBS=		config		8.0 \
			config++	8.0

CATEGORIES=		devel

HOMEPAGE=		http://www.hyperrealm.com/libconfig/libconfig.html

MAINTAINER=		Markus Bergkvist <markus.bergkvist@telia.com>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hyperrealm.com/libconfig/

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/samples/c/*.c \
		${PREFIX}/share/examples/libconfig
	${INSTALL_DATA} ${WRKSRC}/samples/c++/*.cpp \
		${PREFIX}/share/examples/libconfig

.include <bsd.port.mk>
