# $OpenBSD: Makefile,v 1.5 2017/07/18 21:16:58 anton Exp $

COMMENT = 		simple markdown translator

DISTNAME = 		lowdown-0.1.12
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
