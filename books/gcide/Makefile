# $OpenBSD: Makefile,v 1.1.1.1 2019/03/03 18:27:43 bentley Exp $

COMMENT =	gnu collaborative international dictionary of english

DISTNAME =	gcide-0.52

CATEGORIES =	books

HOMEPAGE =	http://gcide.gnu.org.ua/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_GNU:=gcide/}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gcide
	${INSTALL_DATA} ${WRKDIST}/* ${PREFIX}/share/doc/gcide

.include <bsd.port.mk>
