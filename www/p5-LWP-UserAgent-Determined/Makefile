# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:46 espie Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
