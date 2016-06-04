# $OpenBSD: Makefile,v 1.1.1.1 2016/06/04 13:53:13 tb Exp $

COMMENT=		wifi automagic connector

GH_ACCOUNT=		raylai
GH_PROJECT=		wifind
GH_TAGNAME=		0.3

CATEGORIES=		net

MAINTAINER=		Ray Lai <ray@raylai.com>

# Unlicense
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()

MAKE_ENV=		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST=		Yes

.include <bsd.port.mk>
