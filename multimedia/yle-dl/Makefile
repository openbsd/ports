# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:45 espie Exp $

V =			1.4.6
COMMENT =		download videos from YLE Areena
DISTNAME =		rtmpdump-yle-$V
PKGNAME =		yle-dl-$V
CATEGORIES =		multimedia

HOMEPAGE =		http://users.tkk.fi/~aajanki/rtmpdump-yle/

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto json ssl z

MASTER_SITES =		${HOMEPAGE}

MODULES =		converters/libiconv \
			lang/python
LIB_DEPENDS =		devel/json-c

MAKE_FLAGS =		OPT="" CC="${CC}"
MAKE_ENV =		XCFLAGS="${CFLAGS}" XLDFLAGS="${LDFLAGS}"

USE_GMAKE =		Yes
NO_TEST =		Yes

CFLAGS +=		`pkg-config --cflags json` -I${PREFIX}/include
LDFLAGS +=		`pkg-config --libs json` -liconv

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${SUBST_CMD} ${WRKSRC}/yle-dl.py
	${INSTALL_SCRIPT} ${WRKSRC}/yle-dl.py ${PREFIX}/bin/yle-dl
	${INSTALL_PROGRAM} ${WRKSRC}/rtmpdump-yle ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yle-dl
	${INSTALL_DATA} ${WRKSRC}/COPYING ${WRKSRC}/README.fi \
		${PREFIX}/share/doc/yle-dl

.include <bsd.port.mk>
