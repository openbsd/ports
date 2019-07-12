# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:01 sthen Exp $

COMMENT =	name-indexed data processing tool

V =		5.4.0
DISTNAME =	mlr-$V
PKGNAME =	miller-$V

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

MASTER_SITES =	https://github.com/johnkerl/miller/releases/download/$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
