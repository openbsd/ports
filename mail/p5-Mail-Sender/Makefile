# $OpenBSD: Makefile,v 1.10 2016/06/14 12:12:50 benoit Exp $

COMMENT=	send mail with attachments through SMTP

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Mail-Sender-0.900003
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
