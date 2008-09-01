# $OpenBSD: Makefile,v 1.3 2008/09/01 19:11:04 eric Exp $

COMMENT=	web application construction kit

VERSION=	0.9.32
DISTNAME=	Nevow-${VERSION}
PKGNAME=	py-nevow-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://divmod.org/trac/wiki/DivmodNevow

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ekyo.nerim.net/distfiles/

MODULES=	lang/python

BUILD_DEPENDS=	:py-twisted-web-*:devel/py-twisted/web
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:py-epsilon-*:devel/py-epsilon

MODPY_EGG_VERSION=	${VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nevow
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-nevow
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-nevow
	cp -r ${WRKSRC}/doc/txt/* ${PREFIX}/share/doc/py-nevow

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/nevow/test \
					${MODPY_SITEPKG}/formless/test"

.include <bsd.port.mk>
