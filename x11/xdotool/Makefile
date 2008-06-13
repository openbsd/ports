# $OpenBSD: Makefile,v 1.1.1.1 2008/06/13 05:33:52 landry Exp $

COMMENT=	fake keyboard and mouse input

DISTNAME=	xdotool-20080606
CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/xdotool/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://semicomplete.googlecode.com/files/

USE_X11=		Yes
WANTLIB=		X11 Xau Xdmcp Xext Xtst c
REGRESS_IS_INTERACTIVE=	Yes

do-regress:
	cd ${WRKSRC} && /bin/sh ./t/no_crashes_please.sh
.include <bsd.port.mk>
