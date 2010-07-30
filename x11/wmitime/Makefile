# $OpenBSD: Makefile,v 1.13 2010/07/30 06:59:01 ajacoutot Exp $

COMMENT=		wm-dockapp; shows the date, time, and Internet time

DISTNAME=		wmitime-0.3
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://dockapps.org/files/22/29/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmitime
WRKSRC=			${WRKDIST}/wmitime

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmitime ${PREFIX}/bin

.include <bsd.port.mk>
