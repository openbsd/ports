# $OpenBSD: Makefile,v 1.32 2013/04/27 15:44:21 ajacoutot Exp $

COMMENT=	decoder for the CEPT (Btx) protocol

DISTNAME=	xcept-2.1.2
REVISION=	5
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}"

USE_GROFF =	Yes

CFLAGS+=-Dlog=logit
WRKDIST=	${WRKDIR}/XCept-2.1.2

NO_TEST=	Yes

.include <bsd.port.mk>
