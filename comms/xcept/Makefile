# $OpenBSD: Makefile,v 1.30 2012/04/05 20:36:03 jasper Exp $

COMMENT=	decoder for the CEPT (Btx) protocol

DISTNAME=	xcept-2.1.2
REVISION=	4
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c pthread-stubs xcb

MAKE_FLAGS=	SYSCONFDIR="${SYSCONFDIR}"

USE_GROFF =	Yes

CFLAGS+=-Dlog=logit
WRKDIST=	${WRKDIR}/XCept-2.1.2

NO_REGRESS=	Yes

.include <bsd.port.mk>
