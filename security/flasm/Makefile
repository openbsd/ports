# $OpenBSD: Makefile,v 1.1.1.1 2015/11/19 20:52:28 rpointel Exp $

COMMENT =		disassembles SWF

DISTNAME =		flasm16src
PKGNAME =		flasm-1.62

CATEGORIES =		security devel

HOMEPAGE =		http://www.nowrap.de/flasm

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# https://github.com/coolwanglu/flasm/blob/master/LICENSE.TXT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c z

MASTER_SITES =		http://www.nowrap.de/download/

EXTRACT_SUFX =		.zip

BUILD_DEPENDS =		devel/gperf \
			devel/bison

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/flasm ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flasm/
	${INSTALL_DATA} ${WRKDIST}/LICENSE.TXT ${PREFIX}/share/doc/flasm/
	${INSTALL_DATA} ${WRKDIST}/flasm.html ${PREFIX}/share/doc/flasm/

.include <bsd.port.mk>
