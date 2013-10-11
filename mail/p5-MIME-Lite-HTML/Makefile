# $OpenBSD: Makefile,v 1.6 2013/10/11 23:50:00 naddy Exp $

COMMENT =	transform a HTML page in a MIME-Lite mail

DISTNAME =	MIME-Lite-HTML-1.23
REVISION =	0
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	mail/p5-MIME-Lite
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
