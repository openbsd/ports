# $OpenBSD: Makefile,v 1.24 2014/11/27 16:16:31 naddy Exp $

COMMENT=	hacked 9wm, with support for virtual screens

DISTNAME=	w9wm-0.4.2
REVISION =	4
CATEGORIES=	plan9

HOMEPAGE=	http://www.grassouille.org/code/w9wm.en.html

MAINTAINER =	William Yodlowsky <william@openbsd.org>

# nonstandard license
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	No
PERMIT_DISTFILES_FTP =	No

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

MASTER_SITES=	http://www.grassouille.org/code/w9wm/src/

CONFIGURE_STYLE=imake
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}.orig

.include <bsd.port.mk>
