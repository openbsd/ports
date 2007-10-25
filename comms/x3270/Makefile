# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 10:55:59 naddy Exp $

COMMENT=	IBM 3270 terminal emulator for the X Window System

DISTNAME=	x3270-3.3.6
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

WANTLIB=		ICE SM X11 Xaw Xext Xmu Xt crypto ssl util c

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

CONFIGURE_ARGS=		--with-fontdir=${PREFIX}/lib/X11/fonts/x3270 \
			--with-x

WRKDIST=		${WRKDIR}/x3270-3.3

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples \
			PREFIX=${PREFIX} DESTDIR=${WRKINST}

.include <bsd.port.mk>
