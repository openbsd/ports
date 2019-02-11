# $OpenBSD: Makefile,v 1.22 2019/02/11 08:00:52 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

GH_ACCOUNT=		ajacoutot
GH_PROJECT=		toad
GH_TAGNAME=		1.8

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

pre-configure:
	sed -i -e "s,/usr/local,${LOCALBASE},g" -e "s,/etc,${SYSCONFDIR},g" \
		${WRKSRC}/toad.{8,pl}

.include <bsd.port.mk>
