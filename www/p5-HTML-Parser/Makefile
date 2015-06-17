# $OpenBSD: Makefile,v 1.49 2015/06/17 06:16:51 bentley Exp $

SHARED_ONLY =		Yes

COMMENT =		modules to parse and extract information from HTML
 
MODULES =		cpan
DISTNAME =		HTML-Parser-3.71
CATEGORIES =		www
REVISION =		1

RUN_DEPENDS =		www/p5-HTML-Tagset>=3
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		www/p5-URI \
			www/p5-libwww

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
