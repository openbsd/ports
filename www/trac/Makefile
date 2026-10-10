COMMENT=	wiki and bug tracking system for software projects

MODPY_DISTV=	1.6.1.dev0
PORTROACH=	limitw:1,even
#DISTNAME=	Trac-${MODPY_DISTV:S/post/.post/}
#PKGNAME=	trac-${MODPY_DISTV:S/post/pl/}
DISTNAME=	trac-1.6pl17978
CATEGORIES=	www devel

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://trac.edgewall.org/

#SITES=		https://download.edgewall.org/trac/
SITES=		https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE=   Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

COMMON_DEPS=	devel/py-babel \
		textproc/py-MarkupSafe \
		www/py-jinja2

# removal targeted for 1.6.2: https://trac.edgewall.org/ticket/13606
COMMON_DEPS+=	sysutils/py-standard-pkg-resources

RUN_DEPENDS=	${COMMON_DEPS} \
		devel/subversion,-python \
		security/py-passlib \
		textproc/py-docutils \
		textproc/py-pygments \
		www/py-multipart>1

BUILD_DEPENDS=	${COMMON_DEPS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/trac
	cd ${WRKSRC} && pax -rw contrib/ ${PREFIX}/share/examples/trac

do-test:
	@cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} ./trac/test.py

.include <bsd.port.mk>
