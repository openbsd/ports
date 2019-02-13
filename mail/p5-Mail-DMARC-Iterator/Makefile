# $OpenBSD: Makefile,v 1.2 2019/02/13 22:12:01 bluhm Exp $

COMMENT =	iterative DMARC validation for mails

DISTNAME =	Mail-DMARC-Iterator-0.013
REVISION =	0

CATEGORIES =	mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		mail/p5-Mail-DKIM-Iterator>=1.002 \
			mail/p5-Mail-SPF-Iterator>=1.115 \
			security/p5-IO-Socket-SSL

PKG_ARCH =		*

.include <bsd.port.mk>
