# $OpenBSD: Makefile,v 1.1.1.1 2017/01/10 20:26:44 jturner Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		systems language that is both powerful and fun to use

DISTNAME =		myrddin-0.1.0-alpha1
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://myrlang.org/

GH_ACCOUNT =		oridb
GH_PROJECT =		mc
GH_COMMIT =		8a92415ad8220c1f651b0ed6338efb072e848d5c

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB	+= c

CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
