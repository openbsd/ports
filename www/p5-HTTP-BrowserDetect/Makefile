# $OpenBSD: Makefile,v 1.10 2015/01/21 14:43:33 sthen Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
DISTNAME=	HTTP-BrowserDetect-1.22
CATEGORIES=	www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
