# $OpenBSD: Makefile,v 1.15 2015/06/05 22:14:41 bluhm Exp $

COMMENT =		handy web browsing in a Perl object

DISTNAME =		WWW-Mechanize-1.75

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

# TEST DEPENDS included as
# perl check versions at configure time

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Taint \
			devel/p5-Test-Warn>=0.11
RUN_DEPENDS = 		www/p5-CGI>=4.08 \
			www/p5-HTML-Parser>=3.33 \
			www/p5-HTML-Form>=6.0 \
			www/p5-HTML-Tree \
			www/p5-HTTP-Server-Simple>=0.30 \
			www/p5-LWP-Protocol-https>=6 \
			www/p5-URI>=1.36 \
			www/p5-libwww>=5.837
TEST_DEPENDS =		devel/p5-PadWalker \
			devel/p5-Test-Exception \
			devel/p5-Test-NoWarnings

# Include Live Tests
.ifdef LIVE_TEST
CONFIGURE_ARGS +=	--live
.endif

.include <bsd.port.mk>
