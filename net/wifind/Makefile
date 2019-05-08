# $OpenBSD: Makefile,v 1.5 2019/05/08 19:08:58 danj Exp $

COMMENT=		wifi automagic connector

GH_ACCOUNT=		raylai
GH_PROJECT=		wifind
GH_TAGNAME=		0.7
REVISION=		0

CATEGORIES=		net

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
