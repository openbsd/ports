COMMENT =	collection of Russian fortunes
DISTNAME =	fortune-mod-ru-1.52

CATEGORIES =	misc

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.ohvost.ru/dnl/

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FAKE_FLAGS =	PREFIX=${PREFIX} \
		INSTALLPATH=${PREFIX}/share/games/fortune/ru

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fortune-mod-ru
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fortune-mod-ru
	# no need for those on OpenBSD
	find ${PREFIX} -name '*.u8' -delete

.include <bsd.port.mk>
