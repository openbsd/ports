COMMENT =	library for WWW access in Perl

DISTNAME =	libwww-perl-6.83
PKGNAME =	p5-${DISTNAME:S/-perl-/-/}
CPAN_AUTHOR =	OALDERS

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-File-Listing>=6.0 \
			devel/p5-Try-Tiny \
			net/p5-Net-HTTP>=6.18 \
			textproc/p5-Encode-Locale \
			www/p5-HTML-Parser>=3.71 \
			www/p5-HTTP-Cookies>=6.0 \
			www/p5-HTTP-Date>=6.0 \
			www/p5-HTTP-Message>=7.01 \
			www/p5-HTTP-Negotiate>=6.0 \
			www/p5-LWP-MediaTypes>=6.0 \
			www/p5-URI>=1.10 \
			www/p5-WWW-RobotRules>=6.0
TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-LeakTrace \
			devel/p5-Test-Needs \
			devel/p5-Test-RequiresInternet \
			www/p5-HTTP-CookieJar \
			www/p5-HTTP-Daemon>=6.12

PKG_ARCH =		*

.include <bsd.port.mk>
