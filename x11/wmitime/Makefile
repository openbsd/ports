# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:53 wilfried Exp $

DISTNAME=		wmitime-0.3
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.359

HOMEPAGE=		http://www.neotokyo.org/illusion/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

USE_X11=		Yes

WRKDIST=		${WRKDIR}/wmitime
WRKSRC=			${WRKDIST}/wmitime

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmitime ${PREFIX}/bin

.include <bsd.port.mk>
