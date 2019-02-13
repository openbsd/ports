# $OpenBSD: Makefile,v 1.1.1.1 2019/02/13 19:59:05 bluhm Exp $

COMMENT =	iterative DMARC validation for mails

DISTNAME =	Mail-DMARC-Iterator-0.013

CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		mail/p5-Mail-DKIM-Iterator>=1.002 \
			mail/p5-Mail-SPF-Iterator>=1.115 \
			security/p5-IO-Socket-SSL

PKG_ARCH =		*

.include <bsd.port.mk>
