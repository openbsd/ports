# $OpenBSD: Makefile,v 1.12 2015/01/21 14:27:57 sthen Exp $

COMMENT= 	DateTime parser for ISO8601 date formats

MODULES=	cpan 
DISTNAME=	DateTime-Format-ISO8601-0.08
CATEGORIES=	devel
EPOCH =		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS =	devel/p5-Test-Distribution \
			devel/p5-Test-Pod
RUN_DEPENDS=		devel/p5-DateTime-Format-Builder

CONFIGURE_STYLE=modbuild

MAKE_ENV=TEST_POD=Yes

.include <bsd.port.mk>
