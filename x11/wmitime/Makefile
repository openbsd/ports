# $OpenBSD: Makefile,v 1.16 2013/03/11 11:46:16 espie Exp $

COMMENT=		wm-dockapp; shows the date, time, and Internet time

DISTNAME=		wmitime-0.3
REVISION=		1
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://dockapps.org/files/22/29/ \
			http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/wmitime
WRKSRC=			${WRKDIST}/wmitime

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmitime ${PREFIX}/bin

.include <bsd.port.mk>
