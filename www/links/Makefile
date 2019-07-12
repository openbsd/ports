# $OpenBSD: Makefile,v 1.22 2019/07/12 20:50:48 sthen Exp $

COMMENT=	text browser, displays while downloading

VERSION=	1.03
REVISION=	0
DISTNAME=	links-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.jikos.cz/~mikulas/links/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto ssl z

MASTER_SITES=	${HOMEPAGE}download/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
