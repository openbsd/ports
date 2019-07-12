# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:55 sthen Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-BrowserDetect-2.08
CATEGORIES=	www

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
TEST_DEPENDS =	devel/p5-Test-Most \
		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
