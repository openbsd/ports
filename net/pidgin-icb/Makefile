# $OpenBSD: Makefile,v 1.1.1.1 2007/05/24 11:43:41 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"ICB protocol plugin for Pidgin"

DISTNAME=	pidgin-icb-20070505
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:pidgin-2.0.0*:net/pidgin

NO_REGRESS=	Yes

.include <bsd.port.mk>
