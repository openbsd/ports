# $OpenBSD: Makefile,v 1.5 2013/03/11 11:23:52 espie Exp $

COMMENT =	transform a HTML page in a MIME-Lite mail

DISTNAME =	MIME-Lite-HTML-1.23
REVISION =	0
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
RUN_DEPENDS =	mail/p5-MIME-Lite
BUILD_DEPENDS =	${RUN_DEPENDS}
USE_GROFF =	Yes

.include <bsd.port.mk>
