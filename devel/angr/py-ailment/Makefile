# $OpenBSD: Makefile,v 1.5 2021/01/17 19:50:44 jasper Exp $

COMMENT =		angr intermediate language

ANGR_PYTHON_MODULE =	ailment

# ailment cannot be used standalone as it requires angr, however
# since angr already requires ailment we'd create a cyclic
# dependency; so skip it here.
RUN_DEPENDS =		devel/angr/py-pyvex>=${MODPY_EGG_VERSION}

.include <bsd.port.mk>
