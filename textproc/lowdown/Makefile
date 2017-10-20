# $OpenBSD: Makefile,v 1.8 2017/10/20 13:48:09 anton Exp $

COMMENT = 		simple markdown translator

DISTNAME = 		lowdown-0.3.0
CATEGORIES = 		textproc

HOMEPAGE = 		https://kristaps.bsd.lv/lowdown/
MAINTAINER =		Anton Lindqvist <anton@openbsd.org>

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
