# $OpenBSD: Makefile,v 1.7 2008/07/11 00:27:26 martynas Exp $

COMMENT=		pluggable command-line frontend

MODPY_EGG_VERSION=	1.6.3
DISTNAME=		PasteScript-${MODPY_EGG_VERSION}
PKGNAME=		py-paste-script-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://pythonpaste.org/script/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/P/PasteScript/

MODULES=		lang/python
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/py-cheetah \
			::devel/py-wsgiutils \
			::www/py-flup \
			::www/py-paste \
			::www/py-paste-deploy

# NOTE: regression tests won't pass, because they need ZPTKit (which
# has shitloads of dependencies) and FakePlugin.  There isn't much
# point in porting them.
NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-script
	cd ${WRKSRC}/docs && pax -rw * $ ${PREFIX}/share/doc/py-paste-script/

.include <bsd.port.mk>
