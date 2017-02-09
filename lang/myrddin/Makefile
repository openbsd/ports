# $OpenBSD: Makefile,v 1.2 2017/02/09 20:36:50 jturner Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		systems language that is both powerful and fun to use

DISTNAME =		myrddin-0.1.0-alpha2
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://myrlang.org/

GH_ACCOUNT =		oridb
GH_PROJECT =		mc
GH_COMMIT =		658dd280c40c5a6edb110e1170013e8479fe2bd0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	+= c

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
