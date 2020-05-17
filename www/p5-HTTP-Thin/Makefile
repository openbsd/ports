# $OpenBSD: Makefile,v 1.1.1.1 2020/05/17 18:45:28 afresh1 Exp $

COMMENT =	thin wrapper around HTTP::Tiny to work with HTTP::Message
DISTNAME =	HTTP-Thin-0.006
CATEGORIES =	www
PKG_ARCH =	*

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

RUN_DEPENDS =	devel/p5-Class-Method-Modifiers \
		devel/p5-Hash-MultiValue \
		devel/p5-Safe-Isa \
		www/p5-HTTP-Message

.include <bsd.port.mk>
