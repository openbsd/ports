COMMENT=		generator for pronounceable random words

MODPY_DISTV=	0.3.7
DISTNAME=		yould-${MODPY_DISTV}
REVISION=		6
CATEGORIES=		textproc

# GPLv3
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yould
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/yould

.include <bsd.port.mk>
