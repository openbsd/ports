# $OpenBSD: Makefile,v 1.7 2021/10/26 14:44:57 ajacoutot Exp $

COMMENT =		CUE sheet parser library

GH_ACCOUNT =		lipnitsk
GH_PROJECT =		libcue
GH_TAGNAME =		v2.2.1

CATEGORIES =		audio

SHARED_LIBS =		cue		1.0	# 1.4

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

NO_TEST =		Yes

.include <bsd.port.mk>
