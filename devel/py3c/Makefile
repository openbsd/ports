COMMENT =	python 2/3 compatibility layer for C extensions

GH_ACCOUNT =	encukou
GH_PROJECT =	py3c
GH_TAGNAME =	v1.1
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://py3c.readthedocs.io/

MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_BUILDDEP = No
MODPY_RUNDEP =	No

CONFIGURE_STYLE =	none

ALL_TARGET =		py3c.pc
MAKE_FLAGS =		prefix=${PREFIX}

USE_GMAKE =		Yes

.include <bsd.port.mk>
