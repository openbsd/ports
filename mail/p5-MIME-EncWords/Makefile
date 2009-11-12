# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 20:25:18 landry Exp $

COMMENT =	perl module to deal with RFC 2047 encoded words

DISTNAME =	MIME-EncWords-1.011.1
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::mail/p5-MIME-Charset

.include <bsd.port.mk>
