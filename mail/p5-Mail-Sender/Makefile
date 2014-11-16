# $OpenBSD: Makefile,v 1.8 2014/11/16 10:08:27 benoit Exp $

COMMENT=	send mail with attachments through SMTP

MODULES=	cpan

DISTNAME =	Mail-Sender-0.8.23
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
