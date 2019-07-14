# $OpenBSD: Makefile,v 1.2 2019/07/14 00:39:36 naddy Exp $

COMMENT =	Sega Genesis core for retroarch

DISTNAME =	libretro-genesis-plus-gx-1.7.4pl20160815

GH_ACCOUNT =	ekeeke
GH_PROJECT =	Genesis-Plus-GX
GH_COMMIT =	446d9aa61f1f3633b142cc4df0420ebd0b66813f

CATEGORIES =	emulators

HOMEPAGE =	https://bitbucket.org/eke/genesis-plus-gx

# Noncommercial redistribution and modification explicitly allowed: LICENSE.txt
PERMIT_PACKAGE =	Yes

WANTLIB += m

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -fPIC"

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		Makefile.libretro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/genesis_plus_gx_libretro.so \
		${PREFIX}/lib/libretro
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libretro-genesis-plus-gx
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt \
		${PREFIX}/share/doc/libretro-genesis-plus-gx

.include <bsd.port.mk>
