# $OpenBSD: Makefile,v 1.2 2010/11/22 08:37:00 espie Exp $

COMMENT=	suite of tools for managing icons in an application

DISTNAME=	icontool-0.1.0
CATEGORIES=	x11

HOMEPAGE=	https://launchpad.net/icontool/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/0.1/+download/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-XML-Simple

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
