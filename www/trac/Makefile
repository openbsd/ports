# $OpenBSD: Makefile,v 1.73 2020/07/11 22:54:40 sthen Exp $

COMMENT=	wiki and bug tracking system for software projects

MODPY_EGG_VERSION=1.4.2
PORTROACH=	limitw:1,even
DISTNAME=	Trac-${MODPY_EGG_VERSION:S/post/.post/}
PKGNAME=	trac-${MODPY_EGG_VERSION:S/post/pl/}
CATEGORIES=	www devel
REVISION=	0

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://trac.edgewall.org/

MASTER_SITES=	https://ftp.edgewall.org/pub/trac/

MODPY_SETUPTOOLS=	Yes

# BSD
PERMIT_PACKAGE=   Yes

MODULES=	lang/python

COMMON_DEPS=	devel/py-babel>=0.9.6 \
		www/py-jinja2>=2.9.3

RUN_DEPENDS=	${COMMON_DEPS} \
		devel/subversion,-python \
		textproc/py-docutils \
		textproc/py-pygments

BUILD_DEPENDS=	${COMMON_DEPS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trac
	cd ${WRKSRC} && pax -rw contrib/ ${PREFIX}/share/examples/trac

do-test:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
