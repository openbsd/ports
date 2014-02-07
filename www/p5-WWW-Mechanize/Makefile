# $OpenBSD: Makefile,v 1.12 2014/02/07 22:26:04 bluhm Exp $

COMMENT =		handy web browsing in a Perl object

DISTNAME =		WWW-Mechanize-1.73

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/p5-HTML-Parser>=3.33 \
			www/p5-HTML-Tree \
			www/p5-HTTP-Server-Simple>=0.30 \
			www/p5-URI>=1.36 \
			www/p5-libwww>=5.837
TEST_DEPENDS =		devel/p5-PadWalker \
			devel/p5-Test-Exception \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Taint \
			devel/p5-Test-Warn>=0.11

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
