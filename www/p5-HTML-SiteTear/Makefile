# $OpenBSD: Makefile,v 1.6 2013/03/11 11:44:45 espie Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
DISTNAME=	HTML-SiteTear-1.42
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Copy \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset \
		www/p5-URI \
		www/p5-libwww

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
