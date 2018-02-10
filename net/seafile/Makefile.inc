# $OpenBSD: Makefile.inc,v 1.26 2018/02/10 09:26:45 kirby Exp $

GH_TAGNAME ?= 		v6.1.5
V = 			${GH_TAGNAME:S/v//:S/-server//:S/-testing//:S/-latest//}
DISTNAME = 		${GH_PROJECT}-${V}

CATEGORIES =		net net/seafile

HOMEPAGE =		http://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT = 		haiwen

#.include <bsd.port.mk>
