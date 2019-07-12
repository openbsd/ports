# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:26 sthen Exp $

COMMENT=		simulation of water waves on the X Window desktop

DISTNAME=		xdesktopwaves-1.3
REVISION=		5
CATEGORIES=		x11

HOMEPAGE=		http://xdesktopwaves.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xdesktopwaves/}

WANTLIB=		X11 Xext c m
NO_TEST=		Yes

# cpuid check code clobbers %ebx, used by PIE
.if ${MACHINE_ARCH:Mi386}
MAKE_FLAGS+=		XDW_MAX_OPTIMIZATION=0
.endif

.include <bsd.port.mk>
