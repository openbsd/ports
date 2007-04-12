# $OpenBSD: Makefile,v 1.3 2007/04/12 18:59:36 jasper Exp $

COMMENT=		"spider to recover and store images from web pages"

MODULES=		cpan
DISTNAME=		HTTP-GetImages-0.343
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=		www

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-libwww

.include <bsd.port.mk>
