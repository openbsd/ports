# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:47 sthen Exp $

COMMENT =		generates lists of words given certain information

DISTNAME =		WordGenerator-1.9
REVISION =		1
CATEGORIES =		misc education

HOMEPAGE =		http://billposer.org/Software/WordGenerator.html

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://www.arcane-labs.net/download/OpenBSD/ \
			http://billposer.org/Software/Downloads/

MODULES =		x11/tk

RUN_DEPENDS =		devel/tcllib>=1.8 \
			x11/iwidgets

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/WordGenerator.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/WordGenerator.tcl ${PREFIX}/bin/WordGenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/SampleConfiguration \
		${PREFIX}/share/examples/wordgenerator
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wordgenerator
	${INSTALL_DATA} ${WRKSRC}/README_CONFIGURATION \
		${PREFIX}/share/doc/wordgenerator

.include <bsd.port.mk>
