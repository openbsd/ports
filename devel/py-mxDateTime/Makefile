# $OpenBSD: Makefile,v 1.38 2013/01/05 10:49:53 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	date and time types for Python

MODPY_EGG_VERSION = 3.2.5
DISTNAME =	egenix-mx-base-${MODPY_EGG_VERSION}
PKGNAME =	py-mxDateTime-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	http://www.egenix.com/products/python/mxBase/

# eGenix.com Public License Agreement
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://downloads.egenix.com/python/

WANTLIB += m ${MODPY_WANTLIB} pthread

MODULES =	lang/python

NO_REGRESS =	Yes

# Avoid collisions with libc' bm_free
post-configure:
	@perl -pi -e 's|bm_free|mxbm_free|g' \
	  ${WRKSRC}/mx/TextTools/mxTextTools/mxbmse.[ch] \
	  ${WRKSRC}/mx/TextTools/mxTextTools/mxTextTools.c

.include <bsd.port.mk>
