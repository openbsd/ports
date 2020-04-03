# $OpenBSD: Makefile,v 1.4 2020/04/03 02:47:53 bcallah Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	cross-platform, friendly, and expressive shell
CATEGORIES =	shells

GH_ACCOUNT =	elves
GH_PROJECT =	elvish
GH_TAGNAME =	v0.13.1

HOMEPAGE =	https://elv.sh/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

.include <bsd.port.mk>
