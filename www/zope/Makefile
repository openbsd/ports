# $OpenBSD: Makefile,v 1.25 2005/11/06 20:20:58 mbalmer Exp $

SHARED_ONLY=	Yes

COMMENT=	"object-oriented web application server"

VERSION=	2.8.4
DISTNAME=	Zope-${VERSION}-final
PKGNAME=	${DISTNAME:S/-final//:L}
CATEGORIES=     www

HOMEPAGE=	http://www.zope.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}Products/Zope/${VERSION}/
EXTRACT_SUFX=	.tgz

MODPY_VERSION=	2.4
MODULES=	lang/python

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
RUN_DEPENDS+=	expat::textproc/expat
.endif

NO_CONFIGURE=Yes

BUILD_ARGS=		--build-base=${WRKSRC} \
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

do-regress: fake
	${PYTHON_BIN} ${WRKINST}/${ZOPEHOME}/bin/test.py \
		--all -vv -p --libdir ${WRKINST}/${ZOPELIBDIR}

.include <bsd.port.mk>
