# $OpenBSD: Makefile,v 1.15 2002/10/29 19:48:59 naddy Exp $

COMMENT=	"rather neat animated clock"

DISTNAME=	xdaliclock-2.18
CATEGORIES=	x11

HOMEPAGE=	http://www.jwz.org/xdaliclock/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}
WRKSRC=			${WRKDIST}/X11

NO_REGRESS=		Yes

.include <bsd.port.mk>
