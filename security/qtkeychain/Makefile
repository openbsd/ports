# $OpenBSD: Makefile,v 1.2 2016/01/06 20:02:19 jasper Exp $

COMMENT =		Qt API to store passwords and other secret data

GH_ACCOUNT =		frankosterfeld
GH_PROJECT =		qtkeychain
GH_TAGNAME =		v0.4.0

SHARED_LIBS =		qtkeychain	0.0 # 0.4

CATEGORIES =		security

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		QtDBus m stdc++

MODULES =		devel/cmake x11/qt4

NO_TEST =		Yes

.include <bsd.port.mk>
