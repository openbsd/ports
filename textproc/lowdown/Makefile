# $OpenBSD: Makefile,v 1.1.1.1 2016/12/28 16:58:57 jturner Exp $

COMMENT = 		simple markdown translator

DISTNAME = 		lowdown-0.1.1
CATEGORIES = 		textproc

HOMEPAGE = 		https://kristaps.bsd.lv/lowdown/
MAINTAINER = 		Kristaps Dzonsons <kristaps@bsd.lv>

# ISC
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB += 		c

MASTER_SITES = 		https://kristaps.bsd.lv/lowdown/snapshots/

MAKE_FLAGS = 		PREFIX="${PREFIX}"
NO_TEST = 		Yes
ALL_TARGET = 		lowdown

.include <bsd.port.mk>
