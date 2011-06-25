# $OpenBSD: Makefile,v 1.6 2011/06/25 18:01:08 jasper Exp $

COMMENT =	perl module to deal with RFC 2047 encoded words

DISTNAME =	MIME-EncWords-1.012.3
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/p5-MIME-Charset

.include <bsd.port.mk>
