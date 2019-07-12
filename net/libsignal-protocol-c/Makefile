# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:31 sthen Exp $

COMMENT =	ratcheting forward secrecy protocol

GH_ACCOUNT =	signalapp
GH_PROJECT =	libsignal-protocol-c
GH_TAGNAME =	v2.3.2

SHARED_LIBS +=  signal-protocol-c         0.0 # 2.3

CATEGORIES =	net
HOMEPAGE =	https://signal.org/

MAINTAINER =	Alex Holst <a@mongers.org>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/check
RUN_DEPENDS =	devel/protobuf-c

CONFIGURE_ARGS =	-DBUILD_TESTING=ON \
			-DBUILD_SHARED_LIBS=ON

SUBST_VARS +=		VARBASE

.include <bsd.port.mk>
