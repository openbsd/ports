# $OpenBSD: Makefile,v 1.4 2010/11/17 08:05:14 espie Exp $

COMMENT=	decoder for JBIG2 monochrome hi-res image compression format

DISTNAME=	jbig2dec-0.10
REVISION=	0
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		jb2streams.zip:0

CATEGORIES=	graphics

HOMEPAGE=	http://jbig2dec.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ghostscript.com/~giles/jbig2/jbig2dec/
MASTER_SITES0=		http://jbig2dec.sourceforge.net/ubc/

WANTLIB +=		c m z png

LIB_DEPENDS=		graphics/png

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libpng=${LOCALBASE}
CFLAGS+=		-I${LOCALBASE}/include/libpng
CONFIGURE_ENV=		LDFLAGS="`pkg-config --libs libpng`"

MODULES=		lang/python
MODPY_RUNDEP=		No
REGRESS_DEPENDS=	${BUILD_DEPENDS}

pre-regress:
	${SUBST_CMD} -c ${WRKSRC}/test_jbig2dec.py ${WRKBUILD}/test_jbig2dec.py
	${INSTALL_DATA_DIR} ${WRKBUILD}/ubc/
	mv ${WRKDIR}/*bmp ${WRKDIR}/*jb2 ${WRKBUILD}/ubc/

.include <bsd.port.mk>
