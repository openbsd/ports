# $OpenBSD: Makefile,v 1.13 2015/09/10 08:25:12 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
REVISION=		1

GH_ACCOUNT=		ajacoutot
GH_PROJECT=		toad
GH_TAGNAME=		1.3

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

RUN_DEPENDS=		devel/xdg-utils \
			net/p5-Net-DBus \
			sysutils/consolekit

MAKE_FLAGS=		PREFIX=${TRUEPREFIX} \
			MANDIR=${TRUEPREFIX}/man/man

NO_TEST=		Yes

.include <bsd.port.mk>
