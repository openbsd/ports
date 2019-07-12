# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:02 sthen Exp $

COMMENT =	pass compatible password manager written in go

V =		1.8.4
DISTNAME =	gopass-$V

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MASTER_SITES =	https://github.com/gopasspw/gopass/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "main.version=${V}"

RUN_DEPENDS =	devel/git \
		security/gnupg2

ALL_TARGET =	github.com/gopasspw/gopass

# for tests; some still fail
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
