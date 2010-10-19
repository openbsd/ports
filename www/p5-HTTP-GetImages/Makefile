# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:56 espie Exp $

COMMENT=		spider to recover and store images from web pages

MODULES=		cpan
DISTNAME=		HTTP-GetImages-0.343
REVISION=	0
CATEGORIES=		www
USE_GROFF =	Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-libwww

.include <bsd.port.mk>
