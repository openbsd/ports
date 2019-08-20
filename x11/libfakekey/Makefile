# $OpenBSD: Makefile,v 1.1.1.1 2019/08/20 08:34:08 feinerer Exp $

COMMENT =	library for converting characters to X key-presses

V =		0.1
DISTNAME =	libfakekey-${V}

SHARED_LIBS =	fakekey	0.0 # 0.1

CATEGORIES =	x11

HOMEPAGE =	https://www.yoctoproject.org/software-item/matchbox/

# LGPLv2+
PERMIT_PACKAGE =Yes

WANTLIB += X11 Xext Xi Xtst xcb

MASTER_SITES =	https://downloads.yoctoproject.org/releases/matchbox/libfakekey/${V}/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
