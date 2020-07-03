# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:04 sthen Exp $

COMMENT =		interface between perl web frameworks and web servers

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Plack-1.0047
REVISION =		1
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.23 \
		devel/p5-Devel-StackTrace-AsHTML>=0.11 \
		devel/p5-File-ShareDir>=1.0 \
		devel/p5-Hash-MultiValue>=0.05 \
		devel/p5-Stream-Buffered>=0.02 \
		devel/p5-Try-Tiny \
		net/p5-Test-TCP>=2.15 \
		sysutils/p5-Filesys-Notify-Simple \
		www/p5-Apache-LogFormat-Compiler>=0.33 \
		www/p5-Cookie-Baker>=0.07 \
		www/p5-HTTP-Entity-Parser>=0.17 \
		www/p5-HTTP-Headers-Fast>=0.18 \
		www/p5-HTTP-Message>=5.814 \
		www/p5-URI>=1.59 \
		www/p5-WWW-Form-UrlEncoded>=0.23

# Not required, but make it more useful
RUN_DEPENDS +=	www/fcgi \
		www/p5-libwww>=5.814 \
		www/p5-CGI-Compile \
		www/p5-FCGI-ProcManager

TEST_DEPENDS = devel/p5-Log-Dispatch>=2.25 \
               devel/p5-Log-Log4perl \
               devel/p5-Module-Refresh \
               devel/p5-Test-Requires \
               mail/p5-MIME-Types \
               www/p5-CGI \
               www/p5-CGI-Emulate-PSGI \
               www/p5-HTTP-Request-AsCGI


.include <bsd.port.mk>
