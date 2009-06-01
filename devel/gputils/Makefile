# $OpenBSD: Makefile,v 1.7 2009/06/01 23:05:30 benoit Exp $

COMMENT =		GNU PIC assembler and utilities

VERSION =		0.13.7
DISTNAME =		gputils-${VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://gputils.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gputils/}
MASTER_SITES0 =		http://www.arcane-labs.net/download/OpenBSD/

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} gputils-testsuite-${VERSION}${EXTRACT_SUFX}:0
DIST_SUBDIR =		gputils

CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ENV =		"CC=${CC}" "CPP=${CPP}" "CFLAGS=${CFLAGS}" "CPPFLAGS=${CPPFLAGS}" "LDFLAGS=${LDFLAGS}"

AUTOCONF_VERSION =	2.61

do-regress:
	cd ${WRKSRC}/gpasm/testsuite && sh ./test all


DOCFILES =	gputils.lyx gputils.pdf gputils.ps

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gputils
.for FILE in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${FILE} ${PREFIX}/share/doc/gputils
.endfor

.include <bsd.port.mk>
