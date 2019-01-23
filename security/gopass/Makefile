# $OpenBSD: Makefile,v 1.12 2019/01/23 00:56:46 abieber Exp $

COMMENT =	pass compatible password manager written in go

V =		1.8.4
DISTNAME =	gopass-$V

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c pthread

MASTER_SITES =	https://github.com/gopasspw/gopass/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "main.version=${V}"

RUN_DEPENDS =	devel/git \
		security/gnupg2

ALL_TARGET =	github.com/gopasspw/gopass

# Tests require MODGO_ENV, but break in weird ways when it is set.
NO_TEST =	Yes

.include <bsd.port.mk>
