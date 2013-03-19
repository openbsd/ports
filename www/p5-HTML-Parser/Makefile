# $OpenBSD: Makefile,v 1.46 2013/03/19 18:18:53 nigel Exp $

SHARED_ONLY =		Yes

COMMENT =		modules to parse and extract information from HTML
 
MODULES =		cpan
DISTNAME =		HTML-Parser-3.69
CATEGORIES =		www

RUN_DEPENDS =		www/p5-HTML-Tagset>=3
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		www/p5-URI \
			www/p5-libwww

MAINTAINER =		Srebrenko Sehic <haver@insecure.dk>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
