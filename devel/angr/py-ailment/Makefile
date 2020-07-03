# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:37 sthen Exp $

COMMENT =		angr intermediate language
REVISION =		0

ANGR_PYTHON_MODULE =	ailment

# ailment cannot be used standalone as it requires angr, however
# since angr already requires ailment we'd create a cyclic
# dependency; so skip it here.
RUN_DEPENDS =		devel/angr/py-pyvex>=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
