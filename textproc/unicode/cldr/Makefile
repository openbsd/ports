COMMENT-main =		Unicode Common Locale Data Repository
COMMENT-annotations =	Unicode Common Locale Data Repository (annotations only)

V =			45.0
UNICODE_DATA_NAME =	cldr

PKGNAME-main =		unicode-${UNICODE_DATA_NAME}-${V}
PKGNAME-annotations =	unicode-${UNICODE_DATA_NAME}-annotations-${V}

MULTI_PACKAGES =	-main -annotations

SITES =			${UNICODE_SITES}/cldr/${V:R}/
DISTFILES =		cldr-common-${V}${EXTRACT_SUFX}

RUN_DEPENDS-main =	${BASE_PKGPATH},-annotations

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/unicode/cldr/
	cp -Rp ${WRKSRC}/common/ ${PREFIX}/share/unicode/cldr/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/unicode/cldr/

.include <bsd.port.mk>
