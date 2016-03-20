# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:47 naddy Exp $

COMMENT=	send mail with attachments through SMTP

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Mail-Sender-0.8.23
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
