# $OpenBSD: Makefile,v 1.1.1.1 2010/06/27 20:37:19 ckuethe Exp $

COMMENT=		Perl interface for the Tumblr API

DISTNAME=		WWW-Tumblr-4.1
CATEGORIES=		www

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS= ::www/p5-libwww

WRKSRC=${WRKDIR}/WWW-Tumblr

.include <bsd.port.mk>
