# $OpenBSD: Makefile,v 1.15 2020/07/24 01:28:14 afresh1 Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-v2.0.0
PKGNAME=	p5-${DISTNAME:S/v//}
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE=	modbuild
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
