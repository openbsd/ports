# $OpenBSD: Makefile,v 1.13 2002/05/15 09:30:22 wilfried Exp $

COMMENT=		'wm-dockapp; alarm clock'

DISTNAME=		wmtimer-2.4
CATEGORIES=		misc x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://www.dwave.net/~jking/wmtimer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gtk.1,gdk.1::x11/gtk+

USE_X11=		Yes
NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/wmtimer

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtimer ${PREFIX}/bin

.include <bsd.port.mk>
