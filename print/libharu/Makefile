COMMENT =		PDF creation library

DIST_TUPLE +=		github libharu libharu v2.4.4 .

SHARED_LIBS=		hpdf	1.0 #2.4.4

CATEGORIES =		print
HOMEPAGE =		http://libharu.org/

# ZLIB/PNG
PERMIT_PACKAGE =	Yes

WANTLIB =		m png z

MODULES =		devel/cmake \
			lang/python

LIB_DEPENDS =		graphics/png

FIX_CRLF_FILES =	bindings/python/c_func.py \
			bindings/python/demo/outline_demo_jp.py

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/share/libharu/bindings/python/ \
		${PREFIX}/share/libharu/bindings/python/demo/

.include <bsd.port.mk>
