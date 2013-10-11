# $OpenBSD: Makefile,v 1.15 2013/10/11 23:51:46 naddy Exp $

COMMENT=	web application construction kit

VERSION=	0.10.0
DISTNAME=	Nevow-${VERSION}
PKGNAME=	py-nevow-${VERSION}
REVISION=	4
CATEGORIES=	www

HOMEPAGE=	http://divmod.org/trac/wiki/DivmodNevow

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ekyo.nerim.net/distfiles/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	devel/py-twisted/web	\
		devel/py-epsilon
BUILD_DEPENDS=	${RUN_DEPENDS}	\
		devel/py-twisted/lore


MODPY_EGG_VERSION=	${VERSION}
MODPY_DISTUTILS_INSTALLARGS=	--install-data=/usr/local/share/doc

pre-configure:
	perl -pi -e 's/h3>/h2>/g' ${WRKSRC}/doc/howto/glossary.xhtml
	cd ${WRKSRC}/doc/howto && lore
	mv ${WRKSRC}/doc/howto ${WRKSRC}/py-nevow

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/nevow-xmlgettext.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-nevow
	cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-nevow

TRIALDIR=	${WRKDIR}/trial
do-test: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/nevow/test \
					${MODPY_SITEPKG}/formless/test"

.include <bsd.port.mk>
