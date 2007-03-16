# $OpenBSD: Makefile,v 1.2 2007/03/16 22:50:40 martynas Exp $

CATEGORIES=		geo
COMMENT=		"geographic location of OpenBSD developers"

DISTNAME=		openbsd-developers-1.0
PKGNAME=		${DISTNAME}p0
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
