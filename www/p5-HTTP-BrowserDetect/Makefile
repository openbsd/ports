# $OpenBSD: Makefile,v 1.8 2011/04/05 14:30:31 jasper Exp $

COMMENT=	determine web browser from an HTTP user agent string

MODULES=	cpan
DISTNAME=	HTTP-BrowserDetect-1.22
CATEGORIES=	www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Data-Dump \
		devel/p5-YAML
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
