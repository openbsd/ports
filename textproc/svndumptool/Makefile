COMMENT=	processing subversion dump files
MODPY_DISTV=	0.6.1
REVISION=	1

DISTNAME=	svndumptool-${MODPY_DISTV}
CATEGORIES=	textproc
HOMEPAGE=	https://svn.borg.ch/svndumptool/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://svn.borg.ch/svndumptool/${MODPY_DISTV}/
MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}

TEST_DEPENDS=	devel/subversion

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/svndumptool
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/svndumptool/

do-test:
	rm -rf ${WRKDIR}/test
	mkdir -p ${WRKDIR}/test
	cd ${WRKDIR}/test && \
		env -i ${ALL_TEST_ENV} ${MODPY_BIN} ${WRKSRC}/svndumptest.py

.include <bsd.port.mk>
