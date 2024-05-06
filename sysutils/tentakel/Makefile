COMMENT=	distributed command execution

MODPY_EGG_VERSION = 3.1.3
# this _might_ be the actual release, not entirely sure, if not then
# it's fairly close. pypi distfiles don't include the manual/sample conf.
# use a pre tag in the version just in case.
GH_ACCOUNT=	sfermigier
GH_PROJECT=	tentakel
GH_COMMIT=	5d7662a00dfd6bf61b0773b596bbf255a9cbafe3

DISTNAME=	tentakel-${MODPY_EGG_VERSION}pre20220719
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	https://github.com/sfermigier/tentakel

EPOCH=		0

# BSD + LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/tentakel.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tentakel
	${INSTALL_DATA} ${WRKSRC}/doc/tentakel.conf.example \
	    ${PREFIX}/share/examples/tentakel

.include <bsd.port.mk>
