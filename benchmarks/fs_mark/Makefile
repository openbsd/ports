# $OpenBSD: Makefile,v 1.3 2019/05/08 15:48:26 danj Exp $

COMMENT =		test synchronous write workloads
DISTNAME =		fs_mark-3.3
REVISION =		1
CATEGORIES =		benchmarks
HOMEPAGE =		http://sourceforge.net/projects/fsmark/
# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fsmark/}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fs_mark ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fs_mark
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fs_mark/

NO_TEST =		Yes

.include <bsd.port.mk>
