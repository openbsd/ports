# $OpenBSD: Makefile,v 1.9 2002/10/23 20:57:30 todd Exp $

COMMENT=		"OpenCM change management system"
COMMENT-docs=		"OpenCM Documentation"

V=			0.1.0alpha18pl2
sV=			-1
DISTNAME=		opencm-${V}${sV}-src
PKGNAME=		opencm-${V}
FULLPKGNAME=		opencm-${V}
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

BUILD_DEPENDS=		gc.1:boehm-gc->=6.0:devel/boehm-gc
LIB_DEPENDS=		gc.1::devel/boehm-gc

USE_GMAKE=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -lz -lgc" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

FLAVORS=docs
FLAVOR?=

MULTI_PACKAGES=

.if ${FLAVOR:L:Mdocs}
BUILD_DEPENDS+= :teTeX_base-1.0.*:print/teTeX/base
MULTI_PACKAGES+= -docs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opencm
	${INSTALL_DATA} ${WRKSRC}/doc/opencm.html ${PREFIX}/share/doc/opencm
	${INSTALL_DATA} ${WRKSRC}/doc/opencm.ps ${PREFIX}/share/doc/opencm

.else
MAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
FAKE_FLAGS+=		TEXI2DVI=: DVIPS=:
.endif
MAKE_FLAGS+= LIBZ= LIBGC= USOURCE_SUBDIRS="libgdiff src"
FAKE_FLAGS+= LIBZ= LIBGC= USOURCE_SUBDIRS="libgdiff src"

PLIST=			${PKGDIR}/PLIST${SUBPACKAGE}

WRKDIST=		${WRKDIR}/${PKGNAME}
WRKSRC=			${WRKDIST}/base

.include <bsd.port.mk>
