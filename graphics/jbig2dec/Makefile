# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:01 sthen Exp $

SHARED_LIBS +=	jbig2dec             0.0      # 0.0

COMMENT =	decoder for JBIG2 monochrome hi-res image compression format

DISTNAME =	jbig2dec-0.11
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		jb2streams.zip:0

CATEGORIES =	graphics

HOMEPAGE =	http://jbig2dec.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=jbig2dec/}
MASTER_SITES0 =		http://jbig2dec.sourceforge.net/ubc/

WANTLIB +=		c m z png

LIB_DEPENDS =		graphics/png

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.63
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--with-libpng=${LOCALBASE}
CONFIGURE_ENV =		LDFLAGS="`pkg-config --libs libpng`"

MODULES =		lang/python
MODPY_RUNDEP =		No
TEST_DEPENDS =	${BUILD_DEPENDS}

pre-test:
	${SUBST_CMD} -c ${WRKSRC}/test_jbig2dec.py ${WRKBUILD}/test_jbig2dec.py
	${INSTALL_DATA_DIR} ${WRKBUILD}/ubc/
	mv ${WRKDIR}/*bmp ${WRKDIR}/*jb2 ${WRKBUILD}/ubc/

.include <bsd.port.mk>
