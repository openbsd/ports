# $OpenBSD: Makefile,v 1.2 2016/06/04 15:58:10 sthen Exp $

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

.include <bsd.port.mk>
