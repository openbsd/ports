# $OpenBSD: Makefile,v 1.4 2016/01/10 16:04:24 sthen Exp $

BROKEN = needs adapting to changes in Go 1.5

PORTROACH =		ignore

COMMENT =		library for reading and writing XLSX files
DISTNAME =		go-xlsx-20151010
CATEGORIES =		textproc converters
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		tealeg
GH_PROJECT =		xlsx
GH_COMMIT =		dd470a6866d36166e680d718f281eca5b176b485

MODULES =		lang/go
MODGO_TYPE =		lib

TEST_DEPENDS =		devel/go-check-v1

.include <bsd.port.mk>
