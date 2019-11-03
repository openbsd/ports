# $OpenBSD: Makefile,v 1.1 2019/11/03 12:01:13 djm Exp $

COMMENT =	library to support U2F/FIDO2 tokens

DISTNAME =	libfido2-1.2.0pl20191101

GH_ACCOUNT =	Yubico
GH_PROJECT =	libfido2
GH_TAGNAME =	6a628b3d3a9d62a58f94d48340ef9eeca2d672b9 # 2019-11-01

SHARED_LIBS =	fido2 0.0 # 1.2.0

CATEGORIES =	security devel

HOMEPAGE =	https://developers.yubico.com/libfido2/Manuals/

MAINTAINER =	Damien Miller <djm@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB =	cbor c crypto usbhid

MODULES =	devel/cmake
NO_TEST =	Yes

LIB_DEPENDS =	devel/libcbor

.include <bsd.port.mk>
