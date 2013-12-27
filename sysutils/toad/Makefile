# $OpenBSD: Makefile,v 1.8 2013/12/27 09:14:02 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

DISTNAME=		toad-0.9

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://opensource.mtier.org/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c util

MASTER_SITES=		http://opensource.mtier.org/files/

RUN_DEPENDS=		devel/xdg-utils \
			net/p5-Net-DBus \
			sysutils/consolekit

MAKE_FLAGS=		PREFIX=${TRUEPREFIX} \
			MANDIR=${TRUEPREFIX}/man/man
NO_TEST=		Yes

.include <bsd.port.mk>
