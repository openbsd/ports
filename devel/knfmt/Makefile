# $OpenBSD: Makefile,v 1.1 2021/07/26 18:16:00 anton Exp $

COMMENT =	kernel normal form formatter

V =		0.5.0
DISTNAME =	knfmt-${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/mptre/knfmt

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

BUILD_DEPENDS =	devel/uthash

MASTER_SITES =	https://github.com/mptre/knfmt/releases/download/v${V}/

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
