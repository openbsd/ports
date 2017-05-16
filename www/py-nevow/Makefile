# $OpenBSD: Makefile,v 1.18 2017/05/16 19:30:17 landry Exp $

COMMENT=	web application construction kit

MODPY_EGG_VERSION=	0.14.2
DISTNAME=	Nevow-${MODPY_EGG_VERSION}
PKGNAME=	py-nevow-${MODPY_EGG_VERSION}
CATEGORIES=	www

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

BUILD_DEPENDS=	textproc/py-sphinx
RUN_DEPENDS=	devel/py-twisted

MODPY_DISTUTILS_INSTALLARGS=	--install-data=/usr/local/share/doc

pre-configure:
	cd ${WRKSRC}/doc && ${LOCALBASE}/bin/sphinx-build -N . html

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/nevow-xmlgettext.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-nevow
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nevow
	cp -r ${WRKSRC}/doc/html/* ${PREFIX}/share/doc/py-nevow
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-nevow
	cd ${PREFIX}/share/examples/py-nevow && ln -s . sources && \
		ln -s index.css cssfile

TRIALDIR=	${WRKDIR}/trial
do-test: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/nevow/test \
					${MODPY_SITEPKG}/formless/test"

.include <bsd.port.mk>
