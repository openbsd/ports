# $OpenBSD: Makefile,v 1.1.1.1 2019/07/06 20:36:57 afresh1 Exp $

COMMENT =	parser and builder for application/x-www-form-urlencoded

DISTNAME =	WWW-Form-UrlEncoded-0.26

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MAINTAINER=		Wen Heping <wenheping2000@hotmail.com>

MODULES =		cpan

RUN_DEPENDS =		www/p5-WWW-Form-UrlEncoded-XS

CONFIGURE_STYLE =	modbuild
MAKE_ENV =		BREAK_BACKWARD_COMPAT=1

PKG_ARCH =		*

.include <bsd.port.mk>
