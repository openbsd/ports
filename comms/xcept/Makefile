# $OpenBSD: Makefile,v 1.31 2013/03/11 01:30:27 espie Exp $

COMMENT=	decoder for the CEPT (Btx) protocol

DISTNAME=	xcept-2.1.2
REVISION=	4
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}"

USE_GROFF =	Yes

CFLAGS+=-Dlog=logit
WRKDIST=	${WRKDIR}/XCept-2.1.2

NO_TEST=	Yes

.include <bsd.port.mk>
