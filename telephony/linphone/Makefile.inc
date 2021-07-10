# $OpenBSD: Makefile.inc,v 1.2 2021/07/10 16:55:23 landry Exp $

V ?=		5.0.0
CATEGORIES =	telephony
MODULES +=	devel/cmake
MASTER_SITES =	https://gitlab.linphone.org/BC/public/${MODULE}/-/archive/${V}/
DISTNAME ?=	${MODULE}-${V}
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes
