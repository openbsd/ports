# $OpenBSD: Makefile,v 1.19 2011/01/13 08:47:07 jasper Exp $

COMMENT=	hacked 9wm, with support for virtual screens

DISTNAME=	w9wm-0.4.2
REVISION =	2
CATEGORIES=	plan9

HOMEPAGE=	http://www.grassouille.org/code/w9wm.en.html

MAINTAINER =	William Yodlowsky <william@openbsd.org>

# nonstandard license
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_CDROM = No
PERMIT_DISTFILES_FTP =	No

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

MASTER_SITES=	http://www.grassouille.org/code/w9wm/src/

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

WRKSRC=${WRKDIR}/${DISTNAME}.orig

.include <bsd.port.mk>
