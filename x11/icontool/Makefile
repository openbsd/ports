# $OpenBSD: Makefile,v 1.3 2013/03/11 11:46:13 espie Exp $

COMMENT=	suite of tools for managing icons in an application

DISTNAME=	icontool-0.1.0
CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/icontool/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/0.1/+download/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-XML-Simple

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
