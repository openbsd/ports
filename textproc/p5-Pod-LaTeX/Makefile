# $OpenBSD: Makefile,v 1.5 2021/03/07 22:48:00 afresh1 Exp $

COMMENT =		convert pod documentation to latex format

DISTNAME =		Pod-LaTeX-0.61
REVISION =		1

CATEGORIES =		textproc

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		textproc/p5-Pod-Parser

.include <bsd.port.mk>
