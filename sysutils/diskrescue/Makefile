# $OpenBSD: Makefile,v 1.2 2009/05/18 11:40:46 ajacoutot Exp $

COMMENT =		fancy dd

DISTNAME =		diskrescue-0.1
PKGNAME =		${DISTNAME}p0

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
