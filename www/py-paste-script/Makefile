# $OpenBSD: Makefile,v 1.5 2008/01/13 17:09:17 martynas Exp $

COMMENT=		pluggable command-line frontend

VERSION=		1.6.1.1
DISTNAME=		PasteScript-${VERSION}
PKGNAME=		py-paste-script-${VERSION}

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
RUN_DEPENDS=		::devel/py-cheetah \
			::devel/py-wsgiutils \
			::www/py-flup \
			::www/py-paste \
			::www/py-paste-deploy

# NOTE: regression tests won't pass, because they need ZPTKit (which
# has shitloads of dependencies) and FakePlugin.  There isn't much
# point in porting them.
NO_REGRESS=		Yes

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-script
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paste-script/

.include <bsd.port.mk>
