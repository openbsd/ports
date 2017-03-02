# $OpenBSD: Makefile,v 1.1.1.1 2017/03/02 16:10:02 sthen Exp $

COMMENT =		passphrase generator based on Diceware and EFF wordlists

DISTNAME =		dicepassc-1.0

CATEGORIES =		security

HOMEPAGE =		https://www.nul.space/dicepassc/

MAINTAINER =		Andre Stoebe <as@nul.space>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

MASTER_SITES =		https://www.nul.space/pub/dicepassc/

NO_TEST =		Yes

pre-configure:
	sed -i -e "s,/usr/local,${PREFIX},g;" \
		${WRKSRC}/Makefile ${WRKSRC}/dicepassc.c ${WRKSRC}/dicepassc.1

.include <bsd.port.mk>
