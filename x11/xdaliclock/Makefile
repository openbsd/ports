# $OpenBSD: Makefile,v 1.13 2001/09/28 06:02:16 pvalchev Exp $

COMMENT=	"rather neat animated clock"

DISTNAME=	xdaliclock-2.18
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	http://www.jwz.org/xdaliclock/

MAINTAINER=	ports@OpenBSD.ORG
HOMEPAGE=	http://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/X11
WRKSRC=			${WRKDIST}/X11

.include <bsd.port.mk>
