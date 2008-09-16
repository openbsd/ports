# $OpenBSD: Makefile,v 1.5 2008/09/16 16:52:15 jasper Exp $

COMMENT=		library for manipulating structured configuration files

DISTNAME=		libconfig-1.3.1

SHARED_LIBS=		config		7.0 \
			config++	7.0

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
