# $OpenBSD: Makefile,v 1.12 2020/01/09 14:13:04 benoit Exp $

COMMENT =	send mail with attachments through SMTP

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Mail-Sender-0.903
CATEGORIES =	mail
MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>
EPOCH =		0

# perl
PERMIT_PACKAGE=	Yes

pre-patch:
	cd ${WRKSRC} && perl -i -pe 's/\r$$//' Config.PL

.include <bsd.port.mk>
