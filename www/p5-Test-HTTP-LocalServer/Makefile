# $OpenBSD: Makefile,v 1.1.1.1 2018/09/02 19:31:37 bluhm Exp $

COMMENT =	spawn a local HTTP server for testing

DISTNAME =	Test-HTTP-LocalServer-0.63

CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-CGI \
			www/p5-HTTP-Daemon \
			www/p5-HTTP-Message \
			www/p5-HTTP-Request-AsCGI \
			www/p5-URI \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
