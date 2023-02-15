COMMENT =	build OpenBSD release

V =		17.4.1
REVISION =	0
DISTNAME =	robsd-${V}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/mptre/robsd

MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	c

MASTER_SITES =	https://github.com/mptre/robsd/releases/download/v${V}/

CONFIGURE_STYLE =	simple

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
