# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:45 espie Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
DISTNAME=	HTML-Copy-1.3
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
