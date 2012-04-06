# $OpenBSD: Makefile,v 1.7 2012/04/06 20:39:39 sthen Exp $

COMMENT =		Version Control with Subversion

V =			1.7
REVISION =		0
DISTNAME =		svn-book-html-chunk-$V
PKGNAME =		svnbook-${V}
CATEGORIES =		books devel

HOMEPAGE =		http://svnbook.red-bean.com/

# Creative Commons Attribution License
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

# ${HOMEPAGE}/en/$V/svn-book-html-chunk.tar.bz2 appears to be auto-generated
MASTER_SITES =		http://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

EXTRACT_ONLY =
BUILD_DEPENDS =		archivers/bzip2

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

DOCDIR =		${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && \
		tar -s/svn-book-html-chunk/svnbook/g -zjxf \
		${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
