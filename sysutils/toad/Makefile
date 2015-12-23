# $OpenBSD: Makefile,v 1.14 2015/12/23 14:15:01 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}

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
