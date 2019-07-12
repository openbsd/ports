# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:52 sthen Exp $

COMMENT=		wifi automagic connector

GH_ACCOUNT=		raylai
GH_PROJECT=		wifind
GH_TAGNAME=		0.7
REVISION=		0

CATEGORIES=		net

# Unlicense
PERMIT_PACKAGE=	Yes

# uses pledge()

MAKE_ENV=		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST=		Yes

do-configure:
	@cd ${WRKSRC}; sed -i s,/etc/wifind.conf,${SYSCONFDIR}/wifind.conf,g \
		wifind.8 wifind wifind.conf.5

.include <bsd.port.mk>
