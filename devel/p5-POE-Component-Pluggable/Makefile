# $OpenBSD: Makefile,v 1.5 2009/10/25 22:24:14 jasper Exp $

COMMENT=		base class for creating plugin enabled POE Components

DISTNAME=		POE-Component-Pluggable-1.24
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-POE->=1.0002:devel/p5-POE \
			::devel/p5-Task-Weaken

EG_DIR= 		${PREFIX}/share/examples/p5-POE-Component-Pluggable

post-install:
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EG_DIR}

.include <bsd.port.mk>
