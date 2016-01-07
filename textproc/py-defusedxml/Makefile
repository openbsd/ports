# $OpenBSD: Makefile,v 1.3 2016/01/07 21:35:28 jasper Exp $

COMMENT=		XML bomb protection for Python stdlib modules

MODPY_EGG_VERSION=	0.4.1
DISTNAME=		defusedxml-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc www
REVISION=		0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
			./tests.py

.include <bsd.port.mk>
