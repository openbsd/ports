# $OpenBSD: Makefile,v 1.10 2007/01/22 20:26:23 todd Exp $

SHARED_ONLY=	Yes

COMMENT=	"ICB protocol plugin for GAIM"

DISTNAME=	gaim-icb-20061112
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:gaim->=2.0.0beta5:net/gaim
RUN_DEPENDS=	:gaim->=2.0.0beta5:net/gaim

NO_REGRESS=	Yes

.include <bsd.port.mk>
