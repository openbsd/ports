# $OpenBSD: Makefile,v 1.11 2019/07/14 00:39:35 naddy Exp $

COMMENT =		modified Fraunhofer FDK AAC encoder and decoder
DISTNAME =		fdk-aac-0.1.5
CATEGORIES =		audio
HOMEPAGE =		http://sourceforge.net/projects/opencore-amr/
REVISION =		0

# Custom
PERMIT_PACKAGE =	Yes

SHARED_LIBS =		fdk-aac                   1.0 # 0.4
WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=opencore-amr/fdk-aac/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdk-aac
	${INSTALL_DATA} ${WRKSRC}/documentation/aacDecoder.pdf \
	                ${WRKSRC}/documentation/aacEncoder.pdf \
	                ${WRKSRC}/NOTICE \
	                ${PREFIX}/share/doc/fdk-aac/

.include <bsd.port.mk>
