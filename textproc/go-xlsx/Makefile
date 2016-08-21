# $OpenBSD: Makefile,v 1.8 2016/08/21 14:33:51 czarkoff Exp $

PORTROACH =		ignore:1

COMMENT =		library for reading and writing XLSX files
DISTNAME =		go-xlsx-20160815
CATEGORIES =		textproc converters
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		tealeg
GH_PROJECT =		xlsx
GH_COMMIT =		bd0ba13fd8a4fe9a529b18e09c23a886f08f7d9a

MODULES =		lang/go
MODGO_TYPE =		lib

TEST_DEPENDS =		devel/go-check-v1

.include <bsd.port.mk>
