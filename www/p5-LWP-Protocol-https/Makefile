COMMENT =	provide https support for p5-libwww

DISTNAME =	LWP-Protocol-https-6.14

CATEGORIES =	www net security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		net/p5-Net-HTTP>=6 \
			security/p5-IO-Socket-SSL>=1.970 \
			www/p5-libwww>=6.06

TEST_DEPENDS =		devel/p5-Test-Needs>=0.002010 \
			devel/p5-Test-RequiresInternet \
			devel/p5-Try-Tiny \
			sysutils/p5-Capture-Tiny>=0.48 \
			sysutils/p5-File-Which \
			www/p5-HTTP-Message

PKG_ARCH =		*

.include <bsd.port.mk>
