COMMENT =	kernel normal form formatter

V =		4.0.0
DISTNAME =	knfmt-${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/mptre/knfmt

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/mptre/knfmt/releases/download/v${V}/

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
