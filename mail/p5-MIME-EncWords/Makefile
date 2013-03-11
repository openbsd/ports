# $OpenBSD: Makefile,v 1.7 2013/03/11 11:23:52 espie Exp $

COMMENT =	perl module to deal with RFC 2047 encoded words

DISTNAME =	MIME-EncWords-1.012.3
CATEGORIES =	mail

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
USE_GROFF =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/p5-MIME-Charset

.include <bsd.port.mk>
