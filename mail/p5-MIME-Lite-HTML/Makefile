# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 20:28:32 landry Exp $

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

.include <bsd.port.mk>
