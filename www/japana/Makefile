# $OpenBSD: Makefile,v 1.8 2011/07/03 23:13:14 naddy Exp $

COMMENT =	proxy that can transliterate japanese

DISTNAME =	japana-2.0.5
REVISION =	0
CATEGORIES =	www japanese converters
HOMEPAGE =	http://www.h.shuttle.de/mitch/japana.en.html

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes


MASTER_SITES =	http://www.h.shuttle.de/mitch/stuff/
RUN_DEPENDS =	japanese/p5-Text-Kakasi \
		devel/p5-AppConfig \
		www/p5-libwww

NO_REGRESS =	Yes

do-build:
	cd ${WRKSRC} && pod2man japana >japana.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/japana/
	${INSTALL_DATA} ${WRKDIST}/default.conf \
	    ${PREFIX}/share/examples/japana/japana.conf
	${INSTALL_MAN} ${WRKBUILD}/japana.1 ${PREFIX}/man/man1/japana.1
	${INSTALL_SCRIPT} ${WRKDIST}/japana ${PREFIX}/sbin/japana

.include <bsd.port.mk>
