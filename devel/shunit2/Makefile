# $OpenBSD: Makefile,v 1.3 2017/08/21 19:43:20 jasper Exp $

COMMENT =		unit test framework for Bourne based shell scripts

DISTNAME =		shunit2-2.1.6
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/kward/shunit2

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://distfiles.nl/

EXTRACT_SUFX =		.tgz

NO_BUILD =		Yes

SHUNIT2_DIR =		${PREFIX}/share/shunit2

post-patch:
	perl -pi -e "s#^. ../src/shunit2#. ${PREFIX}/bin/shunit2#" \
		${WRKSRC}/examples/*.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/shunit2
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/shunit2
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/shunit2
	${INSTALL_SCRIPT} ${WRKSRC}/src/shunit2 ${PREFIX}/bin

do-test:
	cd ${WRKSRC}/src && sh ./shunit2_test.sh

.include <bsd.port.mk>
