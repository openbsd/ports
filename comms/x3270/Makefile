# $OpenBSD: Makefile,v 1.13 2015/03/31 09:44:48 ajacoutot Exp $

COMMENT=	IBM 3270 terminal emulator for the X Window System

DISTNAME=	x3270-3.3.6
REVISION=	4
CATEGORIES=    	comms

HOMEPAGE=	http://x3270.bgp.nu/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=x3270/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Claudio Correa <correa@pucpcaldas.br>

# BSD, MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c crypto ssl \
			util

BUILD_DEPENDS=		devel/imake
RUN_DEPENDS=		comms/c3270

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
NO_TEST=		Yes

CONFIGURE_ARGS=		--with-fontdir=${PREFIX}/share/fonts/x3270 \
			--with-x

WRKDIST=		${WRKDIR}/x3270-3.3

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples \
			PREFIX=${PREFIX}

.include <bsd.port.mk>
