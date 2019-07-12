# $OpenBSD: Makefile,v 1.11 2019/07/12 20:43:44 sthen Exp $

COMMENT =		Version Control with Subversion

V =			1.7
REVISION =		0
DISTNAME =		svn-book-html-chunk-$V
PKGNAME =		svnbook-${V}
CATEGORIES =		books devel

HOMEPAGE =		http://svnbook.red-bean.com/

# Creative Commons Attribution License
PERMIT_PACKAGE =	Yes

# ${HOMEPAGE}/en/$V/svn-book-html-chunk.tar.bz2 appears to be auto-generated
MASTER_SITES =		https://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

EXTRACT_ONLY =
BUILD_DEPENDS =		archivers/bzip2

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

DOCDIR =		${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && \
	    PATH=${PORTPATH} \
	    ${BZIP2} -c -d ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}| \
	    tar -s/svn-book-html-chunk/svnbook/g -xf -
		

.include <bsd.port.mk>
