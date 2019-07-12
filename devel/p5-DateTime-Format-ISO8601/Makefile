# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:51 sthen Exp $

COMMENT= 	DateTime parser for ISO8601 date formats

MODULES=	cpan 
PKG_ARCH=	*
DISTNAME=	DateTime-Format-ISO8601-0.08
CATEGORIES=	devel
EPOCH =		0

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS =	devel/p5-Test-Distribution \
			devel/p5-Test-Pod
RUN_DEPENDS=		devel/p5-DateTime-Format-Builder

CONFIGURE_STYLE=modbuild

MAKE_ENV=TEST_POD=Yes

.include <bsd.port.mk>
