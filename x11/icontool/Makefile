# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:14 sthen Exp $

COMMENT=	suite of tools for managing icons in an application

DISTNAME=	icontool-0.1.0
CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/icontool/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/0.1/+download/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-XML-Simple

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
