# $OpenBSD: Makefile,v 1.2 2010/10/18 19:59:17 espie Exp $

COMMENT =	transform a HTML page in a MIME-Lite mail

DISTNAME =	MIME-Lite-HTML-1.23
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan
RUN_DEPENDS =	::mail/p5-MIME-Lite
BUILD_DEPENDS =	${RUN_DEPENDS}
USE_GROFF =	Yes

.include <bsd.port.mk>
