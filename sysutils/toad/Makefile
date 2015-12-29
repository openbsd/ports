# $OpenBSD: Makefile,v 1.15 2015/12/29 19:49:41 jasper Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)


GH_ACCOUNT=		ajacoutot
GH_PROJECT=		toad
GH_TAGNAME=		1.4

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

RUN_DEPENDS=		net/p5-Net-DBus \
			sysutils/consolekit

MAKE_FLAGS=		PREFIX=${TRUEPREFIX} \
			MANDIR=${TRUEPREFIX}/man/man

NO_TEST=		Yes

.include <bsd.port.mk>
