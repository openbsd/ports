# $OpenBSD: Makefile,v 1.2 2013/10/15 13:48:59 naddy Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

DISTNAME=		toad-0.3
REVISION=		0

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toad
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} \
		-c ${FILESDIR}/hotplug-scripts ${PREFIX}/share/examples/toad/hotplug-scripts

.include <bsd.port.mk>
