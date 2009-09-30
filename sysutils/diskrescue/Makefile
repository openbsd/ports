# $OpenBSD: Makefile,v 1.3 2009/09/30 12:53:43 laurent Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.3

CATEGORIES =		sysutils

HOMEPAGE =		http://www.peereboom.us/diskrescue/

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/snapshot/

EXTRACT_SUFX =		.tgz

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/diskrescue ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/diskrescue.8 ${PREFIX}/man/man8/diskrescue.8

.include <bsd.port.mk>
