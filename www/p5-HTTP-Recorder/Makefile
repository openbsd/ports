# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:20 naddy Exp $

COMMENT=	record interaction with websites

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Recorder-0.07
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTTP-Request-Params \
		www/p5-HTTP-Proxy

.include <bsd.port.mk>
