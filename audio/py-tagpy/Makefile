# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 08:30:01 landry Exp $

COMMENT=		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	0.94.7
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		audio devel

HOMEPAGE =		http://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pypi.python.org/packages/source/t/tagpy/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		tag::audio/taglib \
			boost_python-mt::devel/boost

CONFIGURE_ARGS +=	--boost-python-libname=boost_python-mt \
			--boost-compiler=gcc42 \
			--boost-lib-dir=${LOCALBASE}/lib \
			--boost-inc-dir=${LOCALBASE}/include \
			--taglib-lib-dir=${LOCALBASE}/lib \
			--taglib-inc-dir=${LOCALBASE}/include/taglib \

do-configure:
		cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
