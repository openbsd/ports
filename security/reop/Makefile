# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:36 sthen Exp $

COMMENT =		create and verify cryptographic signatures

VERSION =		2.1.1
DISTNAME =		reop-${VERSION}
CATEGORIES =		security sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.tedunangst.com/flak/post/reop
MASTER_SITES =		http://www.tedunangst.com/flak/files/
EXTRACT_SUFX =		.tgz

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c sodium util
LIB_DEPENDS =		security/libsodium>=0.7.0

ALL_TARGET =		reop
MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lutil -lsodium"

do-test:
	@cd ${WRKSRC}/tests && sh test.sh

do-install:
	${INSTALL_MAN} ${WRKSRC}/reop.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/reop ${PREFIX}/bin

.include <bsd.port.mk>
