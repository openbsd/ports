# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:27 sthen Exp $

COMMENT =	send mail with attachments through SMTP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Mail-Sender-0.903
CATEGORIES =	mail
MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>
EPOCH =		0
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
