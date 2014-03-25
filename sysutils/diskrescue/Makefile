# $OpenBSD: Makefile,v 1.8 2014/03/25 21:20:39 espie Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.3
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		http://opensource.conformal.com/wiki/Disk_Rescue

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

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
