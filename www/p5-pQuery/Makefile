# $OpenBSD: Makefile,v 1.4 2010/11/22 08:36:52 espie Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
DISTNAME=	pQuery-0.07
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
