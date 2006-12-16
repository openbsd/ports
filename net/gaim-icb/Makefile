# $OpenBSD: Makefile,v 1.9 2006/12/16 12:22:34 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"ICB protocol plugin for GAIM"

DISTNAME=	gaim-icb-20061112
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:gaim-2.0.0beta5:net/gaim
RUN_DEPENDS=	:gaim-2.0.0beta5:net/gaim

NO_REGRESS=	Yes

.include <bsd.port.mk>
