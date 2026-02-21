MODPY_DISTV=	313
COMMENT=	in-depth comparison of files, archives, and directories
DISTNAME=	diffoscope-${MODPY_DISTV}
CATEGORIES=	sysutils devel

HOMEPAGE=	https://diffoscope.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

PORTHOME=	${WRKDIST}

RUN_DEPENDS=	archivers/py-libarchive-c \
		devel/py-magic

# Could use a port of tlsh to make more tests work
TEST_DEPENDS=	devel/dtc \
		devel/py-argcomplete \
		devel/py-progressbar \
		devel/libmagic \
		editors/vim \
		sysutils/binwalk \
		sysutils/py-distro \
		textproc/py-defusedxml

pre-test:
	ln -fs ${LOCALBASE}/bin/efile ${WRKDIR}/bin/file

.include <bsd.port.mk>
