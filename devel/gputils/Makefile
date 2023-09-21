COMMENT =		GNU PIC assembler and utilities

VERSION =		1.5.0
DISTNAME =		gputils-${VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://gputils.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c

SITES =			${SITE_SOURCEFORGE:=gputils/}
SITES.test =		http://www.arcane-labs.net/download/OpenBSD/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} 
DISTFILES.test =	gputils-testsuite-${VERSION}${EXTRACT_SUFX}
DIST_SUBDIR =		gputils

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		"CC=${CC}" "CPP=${CPP}" "CFLAGS=${CFLAGS}" "CPPFLAGS=${CPPFLAGS}" "LDFLAGS=${LDFLAGS}"
CONFIGURE_ARGS +=	--disable-html-doc

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.69

do-test:
	cd ${WRKSRC}/gpasm/testsuite && sh ./test all


DOCFILES =	gputils.lyx gputils.pdf gputils.ps

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gputils
.for FILE in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${FILE} ${PREFIX}/share/doc/gputils
.endfor

.include <bsd.port.mk>
