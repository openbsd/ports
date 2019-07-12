# $OpenBSD: Makefile.inc,v 1.36 2019/07/12 20:48:48 sthen Exp $

GH_TAGNAME ?= 		v7.0.0
V = 			${GH_TAGNAME:S/v//:S/-server//:S/-testing//:S/-latest//}
DISTNAME = 		${GH_PROJECT}-${V}

CATEGORIES =		net net/seafile

HOMEPAGE =		https://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT = 		haiwen

#.include <bsd.port.mk>
