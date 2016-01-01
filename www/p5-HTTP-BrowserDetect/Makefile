# $OpenBSD: Makefile,v 1.11 2016/01/01 18:59:54 jasper Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
DISTNAME=	HTTP-BrowserDetect-2.07
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
