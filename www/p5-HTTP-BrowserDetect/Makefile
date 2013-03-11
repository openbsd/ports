# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:46 espie Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
DISTNAME=	HTTP-BrowserDetect-1.22
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
