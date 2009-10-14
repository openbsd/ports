# $OpenBSD: Makefile,v 1.35 2009/10/14 13:03:44 naddy Exp $

COMMENT=	IJG's JPEG compression utilities

DISTNAME=	jpegsrc.v7
PKGNAME=	jpeg-7
SHARED_LIBS=	jpeg	63.0	# .7.0
CATEGORIES=	graphics
MASTER_SITES=	${HOMEPAGE}files/
HOMEPAGE=	http://www.ijg.org/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-silent-rules
# Symbol versioning triggers weird linking problems in dependent ports.
CONFIGURE_ARGS+=--disable-ld-version-script
MAKE_ENV=	RM="rm -f"

WRKDIST=	${WRKDIR}/jpeg-7

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/libjpeg.txt ${WRKSRC}/wizard.txt \
	    ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKSRC}/example.c ${PREFIX}/share/examples/jpeg

.include <bsd.port.mk>
