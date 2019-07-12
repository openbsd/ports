# $OpenBSD: Makefile.inc,v 1.4 2019/07/12 21:07:47 sthen Exp $

V =		2.1
FULL_V =	2.1.0
CATEGORIES =	x11
HOMEPAGE =	http://equinox-project.org
MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>
SUBST_VARS +=	FULL_V

# (L)GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ede/}
