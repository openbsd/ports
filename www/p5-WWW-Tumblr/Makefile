# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:57 espie Exp $

COMMENT=		Perl interface for the Tumblr API

DISTNAME=		WWW-Tumblr-4.1
CATEGORIES=		www

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

MODULES=		cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS= ::www/p5-libwww

WRKSRC=${WRKDIR}/WWW-Tumblr

.include <bsd.port.mk>
