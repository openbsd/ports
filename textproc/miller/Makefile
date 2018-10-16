# $OpenBSD: Makefile,v 1.2 2018/10/16 11:30:37 fcambus Exp $

COMMENT =	name-indexed data processing tool

V =		5.4.0
DISTNAME =	mlr-$V
PKGNAME =	miller-$V

CATEGORIES =	textproc

HOMEPAGE =	https://johnkerl.org/miller/doc/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MASTER_SITES =	https://github.com/johnkerl/miller/releases/download/$V/

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
