# $OpenBSD: Makefile.inc,v 1.39 2021/10/04 14:35:40 kirby Exp $

GH_ACCOUNT = 		haiwen

CATEGORIES =		net net/seafile

HOMEPAGE =		https://www.seafile.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

AUTOCONF_VERSION ?=	2.69
AUTOMAKE_VERSION ?=	1.15

#.include <bsd.port.mk>
