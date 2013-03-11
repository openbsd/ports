# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:05 espie Exp $

COMMENT=	top clone for MySQL

DISTNAME=	mytop-1.7
CATEGORIES=	databases perl5

HOMEPAGE=	http://jeremy.zawodny.com/mysql/mytop/
MASTER_SITES=	http://bigio.snb.it/openbsd/distfiles/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBD-mysql>=2.9004 \
		devel/p5-Term-ReadKey>=2.30
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
