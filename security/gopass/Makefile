# $OpenBSD: Makefile,v 1.1.1.1 2017/10/22 23:46:04 abieber Exp $

COMMENT =	pass compatible password manager wirtten in go

GH_ACCOUNT =	justwatchcom
GH_PROJECT =	gopass
GH_TAGNAME =	v1.5.0

CATEGORIES =	security

HOMEPAGE =	https://github.com/justwatchcom/gopass

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/git \
		security/gnupg2

WANTLIB += c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

# Tests require MODGO_ENV, but break in weird ways when it is set.
NO_TEST =	Yes

.include <bsd.port.mk>
