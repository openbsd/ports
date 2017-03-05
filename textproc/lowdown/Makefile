# $OpenBSD: Makefile,v 1.2 2017/03/05 17:10:41 danj Exp $

COMMENT = 		simple markdown translator

DISTNAME = 		lowdown-0.1.9
CATEGORIES = 		textproc

HOMEPAGE = 		https://kristaps.bsd.lv/lowdown/
MAINTAINER =		Anton Lindqvist <anton.lindqvist@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM = 	Yes

# uses pledge()
WANTLIB += 		c

MASTER_SITES = 		https://kristaps.bsd.lv/lowdown/snapshots/

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		PREFIX="${PREFIX}"
NO_TEST = 		Yes
ALL_TARGET = 		lowdown

.include <bsd.port.mk>
