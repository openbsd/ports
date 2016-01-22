# $OpenBSD: Makefile,v 1.51 2016/01/22 09:23:24 benoit Exp $

SHARED_ONLY =		Yes

COMMENT =		modules to parse and extract information from HTML
 
MODULES =		cpan
DISTNAME =		HTML-Parser-3.72
CATEGORIES =		www

RUN_DEPENDS =		www/p5-HTML-Tagset>=3
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		www/p5-URI \
			www/p5-libwww

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
