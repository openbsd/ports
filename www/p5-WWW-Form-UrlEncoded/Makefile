# $OpenBSD: Makefile,v 1.2 2020/07/03 21:46:06 sthen Exp $

COMMENT =	parser and builder for application/x-www-form-urlencoded

DISTNAME =	WWW-Form-UrlEncoded-0.26
REVISION =	0

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
