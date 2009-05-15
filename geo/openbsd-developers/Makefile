# $OpenBSD: Makefile,v 1.48 2009/05/15 15:47:25 jim Exp $

CATEGORIES=		geo
COMMENT=		geographic location of OpenBSD developers

DISTNAME=		openbsd-developers-1.0
PKGNAME=		${DISTNAME}p45
DISTFILES=
HOMEPAGE=		http://www.openbsd.org/

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/markers
	${INSTALL_DATA} ${FILESDIR}/OpenBSD ${PREFIX}/share/markers

PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
