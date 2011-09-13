# $OpenBSD: Makefile,v 1.8 2011/09/13 13:39:49 gsoares Exp $

COMMENT =		C/C++ static checker

DISTNAME =		cppcheck-1.50

CATEGORIES =		devel

HOMEPAGE =		http://cppcheck.sourceforge.net/

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pcre stdc++ 

BUILD_DEPENDS =		textproc/docbook-xsl \
			textproc/libxslt

LIB_DEPENDS =		devel/pcre

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cppcheck/}

ALL_TARGET =		cppcheck
REGRESS_TARGET = 	test
MAKE_FLAGS =		BIN=${PREFIX}/bin CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} -I${PREFIX}/include -L${PREFIX}/lib"

USE_GMAKE =		Yes

post-build:
	cd ${WRKSRC} && \
	${PREFIX}/bin/xsltproc --novalid --nonet --param man.charmap.use.subset "0" \
	${PREFIX}/share/xsl/docbook/manpages/docbook.xsl \
	${WRKSRC}/man/cppcheck.1.xml

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cppcheck ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cppcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
