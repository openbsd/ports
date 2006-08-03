# $OpenBSD: Makefile,v 1.20 2006/08/03 20:04:52 espie Exp $

COMMENT=		'wm-dockapp; alarm clock'

DISTNAME=		wmtimer-2.9
CATEGORIES=		misc x11 x11/windowmaker

HOMEPAGE=		http://www.darkops.net/wmtimer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi Xpm c glib gmodule iconv intl m pthread

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gtk.>=1,gdk.>=1::x11/gtk+

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmtimer

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtimer ${PREFIX}/bin

.include <bsd.port.mk>
