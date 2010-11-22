# $OpenBSD: Makefile,v 1.7 2010/11/22 08:36:49 espie Exp $

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

USE_GROFF =	Yes
NO_REGRESS =	Yes

do-build:
	cd ${WRKSRC} && pod2man japana|nroff -man >japana.cat1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/japana/
	${INSTALL_DATA} ${WRKDIST}/default.conf \
	    ${PREFIX}/share/examples/japana/japana.conf
	${INSTALL_MAN} ${WRKBUILD}/japana.cat1 ${PREFIX}/man/cat1/japana.0
	${INSTALL_PROGRAM} ${WRKDIST}/japana ${PREFIX}/sbin/japana

.include <bsd.port.mk>
