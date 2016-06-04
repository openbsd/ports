# $OpenBSD: Makefile,v 1.3 2016/06/04 20:08:47 sthen Exp $

COMMENT=		wifi automagic connector

GH_ACCOUNT=		raylai
GH_PROJECT=		wifind
GH_TAGNAME=		0.5

CATEGORIES=		net

MAINTAINER=		Ray Lai <ray@raylai.com>

# Unlicense
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()

MAKE_ENV=		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST=		Yes

do-configure:
	@cd ${WRKSRC}; sed -i s,/etc/wifind.conf,${SYSCONFDIR}/wifind.conf,g \
		wifind.8 wifind wifind.conf.5

.include <bsd.port.mk>
