# $OpenBSD: Makefile,v 1.1.1.1 2018/04/03 13:22:31 abieber Exp $

COMMENT =	a replacement for gpg which can encrypt/sign/verify

DISTNAME =	opmsg-1.78s
EXTRACT_SUFX =	.tgz

FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =	security

HOMEPAGE =	https://github.com/stealth/opmsg

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m

MASTER_SITES =		http://stealth.openwall.net/opmsg/

COMPILER =		base-clang ports-clang ports-gcc

MAKE_FLAGS =		DEFS+="-DHAVE_BN_GENCB_NEW=0"

WRKSRC =		${WRKDIR}/opmsg/src

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/opmsg ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opmsg
	${INSTALL_DATA} ${WRKSRC}/../sample.config \
		${PREFIX}/share/examples/opmsg/sample.config

.include <bsd.port.mk>
