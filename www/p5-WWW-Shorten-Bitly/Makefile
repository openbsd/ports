# $OpenBSD: Makefile,v 1.7 2020/07/03 21:46:07 sthen Exp $

COMMENT =		interface to bit.ly shortening site

DISTNAME =		WWW-Shorten-Bitly-2.001
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			www/p5-WWW-Shorten \
			devel/p5-Path-Tiny \
			devel/p5-File-HomeDir \
			www/p5-LWP-Protocol-https

.include <bsd.port.mk>
