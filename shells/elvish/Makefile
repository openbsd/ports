# $OpenBSD: Makefile,v 1.7 2021/03/08 13:59:26 sthen Exp $

BROKEN-aarch64 = looks like the vendored golang.org/x/sys/unix is too old for aarch64
# try removing above with next update

ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	cross-platform, friendly, and expressive shell
CATEGORIES =	shells

GH_ACCOUNT =	elves
GH_PROJECT =	elvish
GH_TAGNAME =	v0.13.1
REVISION =	0

HOMEPAGE =	https://elv.sh/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

.include <bsd.port.mk>
