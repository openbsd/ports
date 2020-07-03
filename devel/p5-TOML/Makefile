# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:11 sthen Exp $

COMMENT =	parser for Tom's Obvious, Minimal Language

DISTNAME =	TOML-0.97
CPAN_AUTHOR =	KARUPA
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-TOML-Parser>=0.04

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
