# $OpenBSD: Makefile,v 1.1.1.1 2009/06/02 00:57:57 merdely Exp $

COMMENT =		database-independent abstraction layer
DISTNAME =		libdbi-0.8.3
CATEGORIES =		databases
SHARED_LIBS +=		dbi 0.0 # .0.5

HOMEPAGE =		http://libdbi.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdbi/}

MAINTAINER =		Michael Erdely <merdely@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
WANTLIB =		m

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/libdbi
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi/driver-guide
	${INSTALL_DATA} ${WRKSRC}/doc/driver-guide/*.html \
		${PREFIX}/share/doc/libdbi/driver-guide
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdbi/programmers-guide
	${INSTALL_DATA} ${WRKSRC}/doc/programmers-guide/*.html \
		${PREFIX}/share/doc/libdbi/programmers-guide

.include <bsd.port.mk>
