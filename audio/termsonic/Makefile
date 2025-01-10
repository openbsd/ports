COMMENT =		Subsonic client running in your terminal

DISTNAME =		termsonic-0.2
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://git.sixfoisneuf.fr/termsonic/

# tarball created with:
# git clone --branch v0.2 --single-branch https://git.sixfoisneuf.fr/termsonic/
# cd termsonic; go mod vendor
# cd ../; mv termsonic termsonic-0.2
# tar -czvf termsonic-0.2.tar.gz termsonic-0.2

SITES =	https://russ.whirling.top/distfiles/

#MAINTAINER =		Russ Sharek <bsdclown@disroot.org>

# GPL3
PERMIT_PACKAGE =	Yes

WANTLIB +=		c openal pthread

LIB_DEPENDS =		audio/openal

MODULES =		lang/go

do-build:
	cd ${WRKSRC} && \
	mkdir -p ${WRKSRC}/vendor/git.sixfoisneuf.fr/termsonic/ && \
	cp -r src ${WRKSRC}/vendor/git.sixfoisneuf.fr/termsonic/src && \
	cp -r music ${WRKSRC}/vendor/git.sixfoisneuf.fr/termsonic/music && \
	cd ${WRKSRC}/cmd/termsonic && \
		${MODGO_BUILD_CMD} .

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/termsonic
	${SUBST_DATA} ${WRKSRC}/config.toml.example \
		${PREFIX}/share/examples/termsonic/termsonic.toml

.include <bsd.port.mk>

