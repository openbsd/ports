# $OpenBSD: Makefile,v 1.15 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; shows the date, time, and Internet time

DISTNAME=		wmitime-0.3
REVISION=		1
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://dockapps.org/files/22/29/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmitime
WRKSRC=			${WRKDIST}/wmitime

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmitime ${PREFIX}/bin

.include <bsd.port.mk>
