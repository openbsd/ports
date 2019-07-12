# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:35 sthen Exp $

COMMENT=	send mail with attachments through SMTP

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Mail-Sender-0.900003
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
