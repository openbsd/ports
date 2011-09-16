# $OpenBSD: Makefile,v 1.9 2011/09/16 08:26:11 espie Exp $

COMMENT=		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	0.94.8
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVSION =		0

CATEGORIES =		audio devel

HOMEPAGE =		http://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += boost_python-mt m stdc++ tag ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=t/tagpy/}

VMEM_WARNING=		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			audio/taglib \
			devel/boost

CONFIGURE_ARGS +=	--boost-python-libname=boost_python-mt \
			--boost-compiler=gcc42 \
			--boost-lib-dir=${LOCALBASE}/lib \
			--boost-inc-dir=${LOCALBASE}/include \
			--taglib-lib-dir=${LOCALBASE}/lib \
			--taglib-inc-dir=${LOCALBASE}/include/taglib \

do-configure:
		cd ${WRKSRC} && env ${CONFIGURE_ENV} ${MODPY_BIN} ./configure.py ${CONFIGURE_ARGS}

.include <bsd.port.mk>
