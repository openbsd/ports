# $OpenBSD: Makefile,v 1.41 2012/09/26 15:04:09 sthen Exp $

COMMENT=	IJG's JPEG compression utilities #'

V=		8c
DISTNAME=	jpeg-$V
SHARED_LIBS=	jpeg	64.0	# 11.0
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
HOMEPAGE=	http://www.ijg.org/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/
DISTFILES=	jpegsrc.v$V.tar.gz

WANTLIB=	c

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	Yes
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
