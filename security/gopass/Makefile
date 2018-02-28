# $OpenBSD: Makefile,v 1.6 2018/02/28 01:10:28 abieber Exp $

COMMENT =	pass compatible password manager written in go

V =		1.6.11
DISTNAME =	gopass-${V}

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c pthread

MASTER_SITES =	https://github.com/justwatchcom/gopass/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "main.version=${V}"

RUN_DEPENDS =	devel/git \
		security/gnupg2

ALL_TARGET =	github.com/justwatchcom/gopass

# Tests require MODGO_ENV, but break in weird ways when it is set.
NO_TEST =	Yes

.include <bsd.port.mk>
