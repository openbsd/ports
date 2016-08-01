# $OpenBSD: Makefile.inc,v 1.16 2016/08/01 11:38:49 kirby Exp $

GH_TAGNAME ?= 		v5.1.4
V = 			${GH_TAGNAME:S/v//:S/-server//:S/-testing//:S/-latest//}
DISTNAME = 		${GH_PROJECT}-${V}

CATEGORIES =		net net/seafile

HOMEPAGE =		http://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT = 		haiwen

#.include <bsd.port.mk>
