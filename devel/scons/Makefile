COMMENT=	Python-based build system

MODPY_DISTV=	4.9.1
DISTNAME=	scons-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://www.scons.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
