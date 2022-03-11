COMMENT =	proxy that can transliterate japanese

DISTNAME =	japana-2.0.6
CATEGORIES =	www japanese converters
HOMEPAGE =	https://www.cgarbs.de/japana.en.html

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes


MASTER_SITES =	https://www.cgarbs.de/stuff/
RUN_DEPENDS =	japanese/p5-Text-Kakasi \
		devel/p5-AppConfig \
		www/p5-libwww

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && pod2man japana >japana.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/japana/
	${INSTALL_DATA} ${WRKDIST}/default.conf \
	    ${PREFIX}/share/examples/japana/japana.conf
	${INSTALL_MAN} ${WRKBUILD}/japana.1 ${PREFIX}/man/man1/japana.1
	${INSTALL_SCRIPT} ${WRKDIST}/japana ${PREFIX}/sbin/japana

.include <bsd.port.mk>
