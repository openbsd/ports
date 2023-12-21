COMMENT =		modified Fraunhofer FDK AAC encoder and decoder
DISTNAME =		fdk-aac-2.0.3
CATEGORIES =		audio
HOMEPAGE =		https://sourceforge.net/projects/opencore-amr/

# Custom
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		fdk-aac                   1.0 # 2.3
WANTLIB =		c m

SITES =			${SITE_SOURCEFORGE:=opencore-amr/fdk-aac/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdk-aac
	${INSTALL_DATA} ${WRKSRC}/documentation/aacDecoder.pdf \
	                ${WRKSRC}/documentation/aacEncoder.pdf \
	                ${WRKSRC}/NOTICE \
	                ${PREFIX}/share/doc/fdk-aac/

.include <bsd.port.mk>
