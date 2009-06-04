# $OpenBSD: Makefile,v 1.1.1.1 2009/06/04 02:15:45 wcmaier Exp $

COMMENT =		stylish PDF presentation generator

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		Impressive-${MODPY_EGG_VERSION}
PKGNAME =		impressive-${MODPY_EGG_VERSION}

CATEGORIES =		productivity
HOMEPAGE =		http://impressive.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=impressive/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
PY_FLAVOR =		python${MODPY_VERSION}

# Set NO_BUILD to prevent python.port.mk from adding Python to
# BUILD_DEPENDS.
NO_BUILD =		Yes
RUN_DEPENDS =		::graphics/py-opengl \
			::devel/pygame \
			:py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR} \
			::textproc/xpdf \
			::devel/xdg-utils

# We don't use SUBST_CMD here because it goofs with some images inlined
# in the code.
pre-configure:
	mv ${WRKSRC}/impressive.py ${WRKSRC}/impressive.py.orig
	sed -e "1s|/.*|${MODPY_BIN}|" ${WRKSRC}/impressive.py.orig > ${WRKSRC}/impressive.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/impressive.py ${PREFIX}/bin/impressive
	${INSTALL_MAN} ${WRKSRC}/impressive.1 ${PREFIX}/man/man1/impressive.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/impressive
	${INSTALL_DATA} ${WRKSRC}/demo.pdf ${PREFIX}/share/examples/impressive/.

.include <bsd.port.mk>
