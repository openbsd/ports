# $OpenBSD: Makefile,v 1.24 2020/11/28 16:50:19 ajacoutot Exp $

COMMENT=		hotplugd(8) automounter (Toad Opens All Devices)

GH_ACCOUNT=		ajacoutot
GH_PROJECT=		toad
GH_TAGNAME=		v1.9

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

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
