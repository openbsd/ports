# $OpenBSD: Makefile,v 1.1.1.1 2015/04/03 09:54:09 czarkoff Exp $

COMMENT =		modified Fraunhofer FDK AAC encoder and decoder
DISTNAME =		fdk-aac-0.1.3
CATEGORIES =		audio
HOMEPAGE =		http://sourceforge.net/projects/opencore-amr/
MAINTAINER =		Dmitrij D. Czarkoff <czakoff@gmail.com>

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS =		fdk-aac                   0.0 # 0.4
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
