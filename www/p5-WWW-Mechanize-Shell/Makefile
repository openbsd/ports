# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:58 sthen Exp $

COMMENT =	interactive shell for WWW::Mechanize

DISTNAME =	WWW-Mechanize-Shell-0.57

CATEGORIES =	www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		devel/p5-File-Modified \
			devel/p5-Hook-LexWrap>=0.20 \
			devel/p5-Term-Shell>=0.02 \
			www/p5-HTML-Display \
			www/p5-HTML-Parser \
			www/p5-HTML-TokeParser-Simple>=2.0 \
			www/p5-HTTP-Cookies \
			www/p5-URI \
			www/p5-WWW-Mechanize>=1.20 \
			www/p5-WWW-Mechanize-FormFiller>=0.05 \
			www/p5-libwww>=5.69
TEST_DEPENDS =		devel/p5-File-Slurp \
			devel/p5-Test-MockObject \
			devel/p5-Test-Pod>=0.95 \
			devel/p5-Test-Without-Module \
			www/p5-CGI \
			www/p5-HTML-TableExtract \
			www/p5-HTTP-Daemon \
			www/p5-Test-HTTP-LocalServer>=0.63

.include <bsd.port.mk>
