FIX_EXTRACT_PERMISSIONS =	Yes

COMMENT =		LWP::UserAgent for simulating and testing network calls

DISTNAME =		Test-LWP-UserAgent-0.036

CATEGORIES =		www devel

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/p5-HTTP-Date \
			www/p5-HTTP-Message \
			www/p5-libwww \
			devel/p5-namespace-clean \
			devel/p5-Safe-Isa \
			devel/p5-Try-Tiny \
			www/p5-URI
TEST_DEPENDS +=		devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Needs \
			devel/p5-Test-RequiresInternet \
			devel/p5-Test-Warnings

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
