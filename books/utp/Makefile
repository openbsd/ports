# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:44 sthen Exp $

COMMENT =		comprehensive book on unix text processing

V =			1.0
DISTNAME =		utp-$V

CATEGORIES =		books

HOMEPAGE =		http://home.windstream.net/kollar/utp/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# CC-BY-1.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://groff.ffii.org/groff/contrib/documentation/utp/ \
			http://home.windstream.net/kollar/utp/

EXTRACT_ONLY =

DISTFILES =		utp-$V.pdf

NO_BUILD =		Yes
NO_TEST =		Yes

SUBST_VARS =		V

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/utp
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/share/doc/utp

.include <bsd.port.mk>
