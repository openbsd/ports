# $OpenBSD: Makefile,v 1.5 2019/01/11 14:26:26 cwen Exp $

COMMENT=	camelcase, de-camelcase

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	String-CamelCase-0.04
CATEGORIES=	textproc

MAINTAINER=	Andrew Fresh <afresh1@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
