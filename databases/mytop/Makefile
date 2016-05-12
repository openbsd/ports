# $OpenBSD: Makefile,v 1.10 2016/05/12 14:00:13 espie Exp $

COMMENT=	top clone for MySQL

DISTNAME=	mytop-1.7
CATEGORIES=	databases perl5
REVISION =	0

HOMEPAGE=	http://jeremy.zawodny.com/mysql/mytop/
MASTER_SITES=	https://www.paclan.it/distfiles/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBD-mysql>=2.9004
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
