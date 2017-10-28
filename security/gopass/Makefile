# $OpenBSD: Makefile,v 1.2 2017/10/28 13:38:38 abieber Exp $

COMMENT =	pass compatible password manager wirtten in go

GH_ACCOUNT =	justwatchcom
GH_PROJECT =	gopass
GH_TAGNAME =	v1.5.1

CATEGORIES =	security

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
