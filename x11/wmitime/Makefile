# $OpenBSD: Makefile,v 1.6 2001/10/25 22:34:50 wilfried Exp $

COMMENT=		'wm-dockapp; shows the date, time, and Internet time'

DISTNAME=		wmitime-0.3
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://www.neotokyo.org/illusion/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/wmitime
WRKSRC=			${WRKDIST}/wmitime

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmitime ${PREFIX}/bin

.include <bsd.port.mk>
