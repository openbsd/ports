# $OpenBSD: Makefile,v 1.25 2009/06/15 21:23:30 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	date and time types for Python

MODPY_EGG_VERSION = 3.1.2
DISTNAME =	egenix-mx-base-${MODPY_EGG_VERSION}
PKGNAME =	py-mxDateTime-${MODPY_EGG_VERSION}p2
CATEGORIES =	devel

HOMEPAGE =	http://www.egenix.com/products/python/mxBase/

# eGenix.com Public License Agreement
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.lemburg.com/files/python/

FLAVORS =	python2.4 python2.5 python2.6	# Needed for Zope, e.g.
FLAVOR ?=	python2.5

WANTLIB += m

.if !${FLAVOR} || ${FLAVOR:L:Npython?.?}
ERRORS +=	"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION =	${FLAVOR:S/python//}

MODULES =	lang/python

NO_REGRESS =	Yes

# Avoid collisions with libc' bm_free
post-configure:
	@perl -pi -e 's|bm_free|mxbm_free|g' \
	  ${WRKSRC}/mx/TextTools/mxTextTools/mxbmse.[ch] \
	  ${WRKSRC}/mx/TextTools/mxTextTools/mxTextTools.c

.include <bsd.port.mk>
