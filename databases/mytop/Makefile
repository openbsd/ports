# $OpenBSD: Makefile,v 1.6 2012/03/08 09:30:59 giovanni Exp $

COMMENT=	top clone for MySQL

DISTNAME=	mytop-1.6
REVISION=	0
CATEGORIES=	databases perl5

HOMEPAGE=	http://jeremy.zawodny.com/mysql/mytop/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	databases/p5-DBD-mysql>=2.9004 \
		devel/p5-Term-ReadKey>=2.30
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
