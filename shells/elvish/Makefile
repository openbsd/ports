# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:38 sthen Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	cross-platform, friendly, and expressive shell
CATEGORIES =	shells

GH_ACCOUNT =	elves
GH_PROJECT =	elvish
GH_TAGNAME =	0.12

HOMEPAGE =	https://elv.sh/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

.include <bsd.port.mk>
