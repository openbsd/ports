# $OpenBSD: Makefile,v 1.21 2005/01/20 17:13:28 mbalmer Exp $

SHARED_ONLY=	Yes

COMMENT=	"object-oriented web application server"

VERSION=	2.7.4
DISTNAME=	Zope-${VERSION}-0
PKGNAME=	${DISTNAME:S/-0//g:L}
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

PYTHON_VER=	2.3
PYTHON_BIN=	${LOCALBASE}/bin/python${PYTHON_VER}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

.if !defined(NO_SHARED_LIBS) || ${NO_SHARED_LIBS:U} != YES
RUN_DEPENDS+=	:python-expat-${PYTHON_VER}*:lang/python/${PYTHON_VER},-expat
.endif

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--with-python=${LOCALBASE}/bin/python${PYTHON_VER} \
		--prefix=${WRKINST}/${ZOPEHOME} \
		--build-base=${WRKSRC}

MAKE_FILE=	makefile
ALL_TARGET=	build

ZOPEHOME=	${PREFIX}/lib/zope
ZOPELIBDIR=	${ZOPEHOME}/lib/python
ZOPEPRODUCTSDIR=${ZOPELIBDIR}/Products
ZOPEUSER=	_zope
ZOPEGROUP=	_zope

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
