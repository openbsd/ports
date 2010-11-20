# $OpenBSD: Makefile,v 1.6 2010/11/20 17:22:40 espie Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.3
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://opensource.conformal.com/wiki/Disk_Rescue

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		http://opensource.conformal.com/snapshots/diskrescue/

EXTRACT_SUFX =		.tgz

USE_GROFF =		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diskrescue ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/diskrescue.8 ${PREFIX}/man/man8/diskrescue.8

.include <bsd.port.mk>
