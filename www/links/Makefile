# $OpenBSD: Makefile,v 1.18 2011/11/24 16:41:53 gsoares Exp $

COMMENT=	text browser, displays while downloading

VERSION=	1.02
DISTNAME=	links-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.jikos.cz/~mikulas/links/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
