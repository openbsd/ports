# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:47 espie Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
DISTNAME=	pQuery-0.07
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
