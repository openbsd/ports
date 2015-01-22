# $OpenBSD: Makefile,v 1.34 2015/01/22 18:41:16 naddy Exp $

COMMENT=	decoder for the CEPT (Btx) protocol

DISTNAME=	xcept-2.1.2
REVISION=	6
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}"

CFLAGS+=-Dlog=logit
WRKDIST=	${WRKDIR}/XCept-2.1.2

NO_TEST=	Yes

.include <bsd.port.mk>
