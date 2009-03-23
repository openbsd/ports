# $OpenBSD: Makefile,v 1.3 2009/03/23 08:44:07 jasper Exp $

COMMENT=		base class for creating plugin enabled POE Components

DISTNAME=		POE-Component-Pluggable-1.16
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-POE->=1.0002:devel/p5-POE

EG_DIR= 		${PREFIX}/share/examples/p5-POE-Component-Pluggable

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EG_DIR}

.include <bsd.port.mk>
