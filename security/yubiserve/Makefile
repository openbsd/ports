COMMENT=	standalone Yubikey validation server

GH_ACCOUNT=	scumjr
GH_PROJECT=	yubikeyedup
GH_COMMIT=	d5044d3fdc10cc59a5213efd53e0f80b2a1096f9
DISTNAME=	yubikeyedup-0.20201226
REVISION=	0

CATEGORIES=	security www

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	security/py-cryptodome${MODPY_FLAVOR}

NO_TEST=	Yes

pre-patch:
	mv ${WRKSRC}/src ${WRKSRC}/yubikeyedup
	mv ${WRKSRC}/tools ${WRKSRC}/yubikeyedup/tools
	touch ${WRKSRC}/yubikeyedup/{,tools}/__init__.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yubikeyedup
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.rst} \
	    ${PREFIX}/share/doc/yubikeyedup

.include <bsd.port.mk>
