# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:30 espie Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.3
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://opensource.conformal.com/wiki/Disk_Rescue

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://opensource.conformal.com/snapshots/diskrescue/

EXTRACT_SUFX =		.tgz

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diskrescue ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/diskrescue.8 ${PREFIX}/man/man8/diskrescue.8

.include <bsd.port.mk>
