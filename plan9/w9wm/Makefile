# $OpenBSD: Makefile,v 1.17 2010/10/18 21:25:08 espie Exp $

COMMENT=	hacked 9wm, with support for virtual screens

DISTNAME=	w9wm-0.4.2
REVISION=	1
CATEGORIES=	plan9

HOMEPAGE=	http://www.grassouille.org/code/w9wm.en.html

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

MASTER_SITES=	http://www.grassouille.org/code/w9wm/src/

CONFIGURE_STYLE=imake
USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

WRKSRC=${WRKDIR}/${DISTNAME}.orig

.include <bsd.port.mk>
