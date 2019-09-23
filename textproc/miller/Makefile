# $OpenBSD: Makefile,v 1.6 2019/09/23 12:30:30 fcambus Exp $

COMMENT =	name-indexed data processing tool

V =		5.6.2
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
