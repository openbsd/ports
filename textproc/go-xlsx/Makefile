# $OpenBSD: Makefile,v 1.5 2016/01/14 15:55:20 jsing Exp $

PORTROACH =		ignore

REVISION =		0
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
