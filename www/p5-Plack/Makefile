# $OpenBSD: Makefile,v 1.8 2015/01/18 13:13:37 benoit Exp $

COMMENT =		interface between perl web frameworks and web servers

MODULES =		cpan
DISTNAME =		Plack-1.0033
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.23 \
		devel/p5-Devel-StackTrace-AsHTML>=0.11 \
		devel/p5-File-ShareDir>=1.00 \
		devel/p5-Hash-MultiValue>=0.05 \
		devel/p5-Stream-Buffered>=0.02 \
		devel/p5-Try-Tiny>=0 \
		net/p5-Test-TCP>=2.00 \
		sysutils/p5-Filesys-Notify-Simple>=0 \
		www/p5-Apache-LogFormat-Compiler>=0.12 \
		www/p5-HTTP-Body>=1.06 \
		www/p5-HTTP-Message>=5.814 \
		www/p5-URI>=1.59

# Not required, but make it more useful
RUN_DEPENDS +=	www/fcgi \
		www/p5-libwww>=5.814 \
		www/p5-CGI-Compile \
		www/p5-FCGI-ProcManager

TEST_DEPENDS =	devel/p5-Test-Requires>=0

.include <bsd.port.mk>
