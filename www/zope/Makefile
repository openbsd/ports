# $OpenBSD: Makefile,v 1.18 2004/08/03 10:16:36 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"object-oriented web application server"

VERSION=	2.7.2
DISTNAME=	Zope-${VERSION}-0
PKGNAME=	${DISTNAME:S/-0//g:L}
CATEGORIES=     www

HOMEPAGE=	http://www.zope.org/

MAINTAINER=	Marc Balmer <marc@msys.ch>

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
RUN_DEPENDS=	::lang/python/${PYTHON_VER} \
		::lang/python/${PYTHON_VER},-expat

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
