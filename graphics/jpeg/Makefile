# $OpenBSD: Makefile,v 1.48 2013/04/20 15:23:40 naddy Exp $

COMMENT=	IJG's JPEG compression utilities#'

V=		9
DISTNAME=	jpeg-$V
SHARED_LIBS=	jpeg	66.0	# 9.0
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
HOMEPAGE=	http://www.ijg.org/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.ijg.org/files/
DISTFILES=	jpegsrc.v$V.tar.gz

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
# Symbol versioning triggers weird linking problems in dependent ports.
CONFIGURE_ARGS+=--disable-ld-version-script

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/libjpeg.txt ${WRKSRC}/wizard.txt \
	    ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKSRC}/example.c ${PREFIX}/share/examples/jpeg

.include <bsd.port.mk>
