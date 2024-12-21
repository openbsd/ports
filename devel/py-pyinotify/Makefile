COMMENT =		filesystem events monitoring

MODPY_DISTV =	0.9.6
DISTNAME =		pyinotify-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		10

CATEGORIES =		devel

HOMEPAGE =		https://github.com/seb-m/pyinotify

# MIT
PERMIT_PACKAGE =	Yes

# dlopen()ed
WANTLIB =		lib/inotify/inotify

LIB_DEPENDS =		devel/libinotify
MAKE_ENV =		LIBRARY_PATH="${LOCALBASE}/lib/inotify:${LOCALBASE}/lib" \
			LD_LIBRARY_PATH="${LOCALBASE}/lib/inotify:${LOCALBASE}/lib"

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py ${WRKSRC}/python*/pyinotify.py

.include <bsd.port.mk>
