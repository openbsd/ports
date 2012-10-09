# $OpenBSD: Makefile,v 1.11 2012/10/09 15:52:51 naddy Exp $

COMMENT=	IBM 3270 terminal emulator for the X Window System

DISTNAME=	x3270-3.3.6
REVISION=	3
CATEGORIES=    	comms

HOMEPAGE=	http://x3270.bgp.nu/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=x3270/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	Claudio Correa <correa@pucpcaldas.br>

# BSD, MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c crypto ssl \
			util

BUILD_DEPENDS=		devel/imake
RUN_DEPENDS=		comms/c3270

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

CONFIGURE_ARGS=		--with-fontdir=${PREFIX}/lib/X11/fonts/x3270 \
			--with-x

WRKDIST=		${WRKDIR}/x3270-3.3

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples \
			PREFIX=${PREFIX}

.include <bsd.port.mk>
