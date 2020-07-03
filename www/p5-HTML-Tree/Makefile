# $OpenBSD: Makefile,v 1.31 2020/07/03 21:46:02 sthen Exp $

COMMENT=	perl parser that builds an HTML tree

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Tree-5.07
CATEGORIES=	www
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=3.46 \
		www/p5-HTML-Tagset>=3.02
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Fatal

CONFIGURE_STYLE =	modbuild

TEST_DEPENDS=	devel/p5-Test-LeakTrace \
		devel/p5-Try-Tiny

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
