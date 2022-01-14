# $OpenBSD: Makefile,v 1.1.1.1 2022/01/14 19:20:56 sdk Exp $

COMMENT =	opinionated command line journal

GH_ACCOUNT =	thexhr
GH_PROJECT =	jrnlc
GH_TAGNAME =	2021.b

CATEGORIES =	productivity

HOMEPAGE =	https://github.com/thexhr/jrnlc

MAINTAINER =	Matthias Schmidt <openbsd@xosc.org>

# ISC
PERMIT_PACKAGE = Yes

# Uses pledge()
WANTLIB += c json-c sodium

LIB_DEPENDS =	devel/json-c \
		security/libsodium

NO_TEST	=	Yes

.include <bsd.port.mk>
