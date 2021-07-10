# $OpenBSD: Makefile.inc,v 1.1.1.1 2021/07/10 12:03:19 landry Exp $

CATEGORIES =	telephony
MODULES +=	devel/cmake
MASTER_SITES =	https://gitlab.linphone.org/BC/public/${MODULE}/-/archive/${V}/
DISTNAME ?=	${MODULE}-${V}
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes
