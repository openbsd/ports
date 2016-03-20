# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:19 naddy Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-BrowserDetect-2.08
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
TEST_DEPENDS =	devel/p5-Test-Most \
		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
