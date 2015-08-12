# $OpenBSD: Makefile,v 1.6 2015/08/12 19:38:49 miod Exp $

COMMENT =		modified Fraunhofer FDK AAC encoder and decoder
DISTNAME =		fdk-aac-0.1.4
CATEGORIES =		audio
HOMEPAGE =		http://sourceforge.net/projects/opencore-amr/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# Custom
PERMIT_PACKAGE_CDROM =	Patents
PERMIT_PACKAGE_FTP =	Yes

SHARED_LIBS =		fdk-aac                   1.0 # 0.4
WANTLIB =		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=opencore-amr/fdk-aac/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdk-aac
	${INSTALL_DATA} ${WRKSRC}/documentation/aacDecoder.pdf \
	                ${WRKSRC}/documentation/aacEncoder.pdf \
	                ${WRKSRC}/NOTICE \
	                ${PREFIX}/share/doc/fdk-aac/

.include <bsd.port.mk>
