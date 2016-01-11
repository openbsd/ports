# $OpenBSD: Makefile,v 1.3 2016/01/11 11:04:21 czarkoff Exp $

BROKEN = needs adapting to changes in Go 1.5

COMMENT =		testing library for the Go language
DISTNAME =		go-check-v1-20150611
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://labix.org/gocheck

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		go-check
GH_PROJECT =		check
GH_COMMIT =		8d49746f13e4c654088c52685541fcf4cbc8fa59

MODULES =		lang/go
MODGO_TYPE =		lib

ALL_TARGET =		gopkg.in/check.v1

.include <bsd.port.mk>
