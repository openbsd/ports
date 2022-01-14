# $OpenBSD: Makefile,v 1.15 2022/01/14 20:55:44 sthen Exp $

COMMENT =	decoder for JBIG2 monochrome hi-res image compression format

DISTNAME =	jbig2dec-0.19
CATEGORIES =	graphics
MASTER_SITES =	https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9531/
MASTER_SITES0 =	https://jbig2dec.com/tests/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		jb2streams.zip:0

SHARED_LIBS +=	jbig2dec	1.0	# 0.0

HOMEPAGE =	https://jbig2dec.com/

# AGPL
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m png z

LIB_DEPENDS =		graphics/png

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MODULES =		lang/python
MODPY_RUNDEP =		No

TEST_DEPENDS =		${BUILD_DEPENDS}

pre-test:
	${SUBST_CMD} -c ${WRKSRC}/test_jbig2dec.py ${WRKBUILD}/test_jbig2dec.py
	${INSTALL_DATA_DIR} ${WRKBUILD}/ubc/
	mv ${WRKDIR}/*bmp ${WRKDIR}/*jb2 ${WRKBUILD}/ubc/

.include <bsd.port.mk>
