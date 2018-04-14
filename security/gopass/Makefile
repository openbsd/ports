# $OpenBSD: Makefile,v 1.7 2018/04/14 22:53:54 sthen Exp $

COMMENT =	pass compatible password manager written in go

V =		1.6.11
DISTNAME =	gopass-${V}
REVISION =	0

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
