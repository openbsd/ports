# $OpenBSD: Makefile.inc,v 1.37 2019/07/16 15:59:17 kirby Exp $

GH_TAGNAME ?= 		v7.0.1
V = 			${GH_TAGNAME:S/v//:S/-server//:S/-testing//:S/-latest//}
DISTNAME = 		${GH_PROJECT}-${V}

CATEGORIES =		net net/seafile

HOMEPAGE =		https://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT = 		haiwen

#.include <bsd.port.mk>
