# $OpenBSD: Makefile,v 1.3 2020/06/09 03:58:35 bentley Exp $

COMMENT =	mixture of M+ and IPA Gothic fonts, focused on kanji

V =		20200307
PKGNAME =	migu-$V

CATEGORIES =	fonts

HOMEPAGE =	https://mix-mplus-ipa.osdn.jp/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# IPA Font License Agreement v1.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_OSDN_JP:=mix-mplus-ipa/72511/}

DISTFILES =	migu-1c-$V.zip \
		migu-1m-$V.zip \
		migu-1p-$V.zip \
		migu-2m-$V.zip

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/migu
	${INSTALL_DATA} ${WRKDIR}/*/*.ttf ${PREFIX}/share/fonts/migu

.include <bsd.port.mk>
