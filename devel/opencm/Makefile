# $OpenBSD: Makefile,v 1.18 2004/02/04 07:39:18 sturm Exp $

COMMENT=		"OpenCM change management system"
COMMENT-docs=		"OpenCM Documentation"

V=			0.1.2alpha7pl1
sV=			-1
DISTNAME=		opencm-${V}${sV}-src
PKGNAME=		opencm-${V}
FULLPKGNAME-docs=	opencm-docs-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.opencm.org

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# BSD/(GPL for diff3)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

# where the source files and patches can be fetched
#
MASTER_SITES=		http://www.opencm.org/releases/
EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -DUSE_SYSTEM_ZLIB" \
			vl_cv_lib_kerberos=1

LDFLAGS=-L${LOCALBASE}/lib

MAKE_ENV= LDFLAGS="${LDFLAGS}"

NO_REGRESS=	Yes

PSEUDO_FLAVORS=	no_docs
FLAVOR?=

MULTI_PACKAGES=

.if ${FLAVOR:L:Mno_docs}
MAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
FAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
.else
BUILD_DEPENDS+= :teTeX_base-*:print/teTeX/base
MULTI_PACKAGES+= -docs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opencm
	${INSTALL_DATA} ${WRKSRC}/doc/opencm.html ${PREFIX}/share/doc/opencm
	${INSTALL_DATA} ${WRKSRC}/doc/opencm.ps ${PREFIX}/share/doc/opencm

.endif
.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=	*
.endif

MAKE_FLAGS+= LIBZ=-lz USOURCE_SUBDIRS="libgdiff src"
FAKE_FLAGS+= LIBZ=-lz USOURCE_SUBDIRS="libgdiff src"

MAKE_FLAGS+= LIBGC=
FAKE_FLAGS+= LIBGC=
LDFLAGS+= -L/usr/local/lib -lgc
LIB_DEPENDS=		gc.1:boehm-gc->=6.2:devel/boehm-gc

PLIST=			${PKGDIR}/PLIST${SUBPACKAGE}

WRKDIST=		${WRKDIR}/${PKGNAME}
WRKSRC=			${WRKDIST}/base

.include <bsd.port.mk>
