# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 22:00:23 martynas Exp $

COMMENT=		"pluggable command-line frontend"

V=			1.3.4
DISTNAME=		PasteScript-${V}
PKGNAME=		py-paste-script-${V}

CATEGORIES=		www lang/python

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

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-script
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paste-script/

.include <bsd.port.mk>
