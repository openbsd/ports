# $OpenBSD: Makefile,v 1.12 2013/02/09 14:49:53 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		load programs inside browser to view movies, pdfs, etc
DISTNAME =		mozplugger-1.14.2
CATEGORIES =		www

HOMEPAGE =		http://mozplugger.mozdev.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 c

MASTER_SITES =		${HOMEPAGE}files/

USE_GROFF =		Yes
NO_REGRESS =		Yes
ALL_TARGET =		openbsd

FLAVORS =		debug
FLAVOR ?=

# set TMPDIR before starting browser. A 'mozdebug'
# file is generated in that location.
.if ${FLAVOR} == "debug"
DEBUG =		-g
CFLAGS +=	-DDEBUG
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mozplugger-helper ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/mozplugger-controller ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/mozplugger-linker ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mozilla/plugins
	${INSTALL_DATA} ${WRKBUILD}/mozplugger.so ${PREFIX}/lib/mozilla/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mozplugger
	${INSTALL_DATA} ${WRKSRC}/mozpluggerrc \
		${PREFIX}/share/examples/mozplugger
	${INSTALL_MAN} ${WRKSRC}/mozplugger.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
