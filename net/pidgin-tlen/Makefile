# $OpenBSD: Makefile,v 1.3 2007/09/15 22:36:58 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	Tlen.pl protocol plugin for Pidgin

DISTNAME=	pidgin-tlen-20070524
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-tlen/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:pidgin->=2.0.0:net/pidgin

NO_REGRESS=	Yes

.include <bsd.port.mk>
