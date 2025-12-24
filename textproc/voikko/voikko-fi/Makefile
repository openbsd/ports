COMMENT-main =	standard finnish dictionary for voikko
COMMENT-dialects = dialects dictionary for voikko
COMMENT-education = education dictionary for voikko
COMMENT-medicine = medicine dictionary for voikko
COMMENT-morpho = morpho dictionary for voikko
COMMENT-morphoid = morphoid dictionary for voikko
COMMENT-po = po dictionary for voikko
COMMENT-science = science dictionary for voikko

MULTI_PACKAGES =	-main \
			-dialects \
			-education \
			-medicine \
			-morpho \
			-morphoid \
			-po \
			-science \

V =			2.5
PKGNAME =		voikko-fi-${V}
GH_TAGNAME =		rel-${PKGNAME}
WRKSRC =		${WRKDIST}/voikko-fi
REVISION-dialects =	0

PKG_ARCH-dialects =	*
PKG_ARCH-education =	*
PKG_ARCH-medicine =	*
PKG_ARCH-morpho =	*
PKG_ARCH-morphoid =	*
PKG_ARCH-po =		*
PKG_ARCH-science =	*

BUILD_DEPENDS = 	math/foma \
			textproc/voikko/libvoikko

MODPY_RUNDEP =		No
NO_TEST =		Yes

ALL_TARGET =		vvfst
INSTALL_TARGET =	vvfst-install
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX}/share/voikko

DICT_ROOT =		${WRKBUILD}/build-v5

# generate and install the voikko dictionaries
do-build:
	cd ${WRKSRC} && ${WRKDIST}/tools/bin/voikko-build-dicts

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict/5/mor-standard \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-erityis/5/mor-science \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-kasvatus/5/mor-education \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-laaketiede/5/mor-medicine \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-morpho/5/mor-morpho \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-morphoid/5/mor-morphoid \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-murre/5/mor-dialects \
		${PREFIX}/share/voikko/5
	cp -R ${DICT_ROOT}/dict-po/5/mor-po \
		${PREFIX}/share/voikko/5

.include <bsd.port.mk>
