# $OpenBSD: Makefile,v 1.1.1.1 2006/11/01 01:59:26 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Tlen.pl protocol plugin for GAIM"

DISTNAME=	gaim-tlen-20061101
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/gaim-tlen/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:gaim-2.0.0beta4:net/gaim \
		:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=	:gaim-2.0.0beta4:net/gaim

NO_REGRESS=	Yes

.include <bsd.port.mk>
