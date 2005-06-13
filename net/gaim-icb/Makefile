# $OpenBSD: Makefile,v 1.1.1.1 2005/06/13 08:50:04 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"ICB protocol plugin for GAIM"

DISTNAME=	gaim-icb-20050613
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	::net/gaim \
		::devel/pkgconfig
RUN_DEPENDS=	::net/gaim

.include <bsd.port.mk>
