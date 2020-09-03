# $OpenBSD: Makefile,v 1.10 2020/09/03 07:47:15 fcambus Exp $

COMMENT =	name-indexed data processing tool

V =		5.9.1
DISTNAME =	mlr-$V
PKGNAME =	miller-$V

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

MASTER_SITES =	https://github.com/johnkerl/miller/releases/download/v$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
