# $OpenBSD: Makefile.inc,v 1.3 2009/09/15 17:37:22 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	object-oriented web application server

DISTNAME=	Zope-${VERSION}${PATCHLEVEL}-final
CATEGORIES=     www

HOMEPAGE=	http://www.zope.org/

# Zope Public License 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}Products/Zope/${VERSION}${PATCHLEVEL}/
EXTRACT_SUFX=	.tgz

MODPY_VERSION=	2.4
MODULES=	lang/python

BUILD_ARGS=	--build-base=${WRKSRC} \
		--build-lib="${WRKSRC}/build-lib" \
		--build-scripts="${WRKSRC}/build-scripts" \
		--build-temp="${WRKSRC}/build-temp"

ZOPEHOME=	${PREFIX}/lib/zope
ZOPELIBDIR=	${ZOPEHOME}/lib/python
ZOPEPRODUCTSDIR=${ZOPELIBDIR}/Products
ZOPEUSER=	_zope
ZOPEGROUP=	_zope

MODPY_DISTUTILS_BUILD=	build ${BUILD_ARGS}
MODPY_DISTUTILS_INSTALL=	install --prefix=${ZOPEHOME} ${BUILD_ARGS}

SUBST_VARS+=	PYTHON_VER ZOPEHOME ZOPEUSER ZOPEGROUP

pre-configure:
	@perl -pi -e 's,%%ZOPEPRODUCTSDIR%%,${ZOPEPRODUCTSDIR},g;' \
		-e 's,%%ZOPEUSER%%,${ZOPEUSER},g' \
			${WRKSRC}/skel/etc/zope.conf.in
	@sed -e 's,%%ZOPEHOME%%,${ZOPEHOME},g' \
		< ${FILESDIR}/README.OpenBSD > ${WRKSRC}/README.OpenBSD

post-install:
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${ZOPEHOME}/doc
	@find ${WRKINST} -type f -exec chmod 755 {} \;

do-regress: fake
	@env ZOPEHOME=${WRKINST}/${ZOPEHOME} \
	    ${PYTHON_BIN} ${WRKINST}/${ZOPEHOME}/bin/test.py --all -vv -p
