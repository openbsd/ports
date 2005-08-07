# $OpenBSD: Makefile,v 1.3 2005/08/07 12:41:58 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"ICB protocol plugin for GAIM"

DISTNAME=	gaim-icb-20050807
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:gaim-*:net/gaim \
		::devel/pkgconfig
RUN_DEPENDS=	:gaim-*:net/gaim

.include <bsd.port.mk>
