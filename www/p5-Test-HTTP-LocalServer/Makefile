# $OpenBSD: Makefile,v 1.5 2020/07/03 21:46:05 sthen Exp $

COMMENT =	spawn a local HTTP server for testing

DISTNAME =	Test-HTTP-LocalServer-0.71
REVISION =	0

CATEGORIES =	www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-CGI \
			www/p5-HTTP-Daemon>=6.05 \
			www/p5-HTTP-Message \
			www/p5-HTTP-Request-AsCGI \
			www/p5-URI

PKG_ARCH =		*

.include <bsd.port.mk>
