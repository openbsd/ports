# $OpenBSD: Makefile,v 1.2 2019/11/12 23:15:21 djm Exp $

COMMENT =	library to support U2F/FIDO2 tokens

DISTNAME =	libfido2-1.2.0pl20191113

GH_ACCOUNT =	mfriedl
GH_PROJECT =	libfido2
GH_TAGNAME =	4f6739e7dc722abab87ce927c122ea40c7a00c56 # 2019-11-13

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
