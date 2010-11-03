# $OpenBSD: Makefile,v 1.3 2010/11/03 07:27:26 jasper Exp $

COMMENT =		C/C++ static checker

DISTNAME =		cppcheck-1.45

CATEGORIES =		devel

HOMEPAGE =		http://cppcheck.sourceforge.net/

MAINTAINER =		Igor Zinovik <zinovik.igor@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

BUILD_DEPENDS =		::textproc/docbook-xsl \
			::textproc/libxslt

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cppcheck/}

ALL_TARGET =		cppcheck
MAKE_FLAGS =		BIN=${PREFIX}/bin CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

USE_GMAKE =		Yes
USE_GROFF =		Yes

NO_REGRESS =		Yes

post-build:
	cd ${WRKSRC} && \
	${PREFIX}/bin/xsltproc --novalid --nonet --param man.charmap.use.subset "0" \
	${PREFIX}/share/xsl/docbook/manpages/docbook.xsl \
	${WRKSRC}/man/cppcheck.1.xml

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cppcheck ${PREFIX}/bin/
	${INSTALL_DATA} ${WRKSRC}/cppcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
