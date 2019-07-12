# $OpenBSD: Makefile,v 1.27 2019/07/12 20:46:01 sthen Exp $

COMMENT=	Small Device C Compiler
BROKEN-sparc64=	illegal operands building SDCCval.c
BROKEN-alpha=	sdcc segfaults when building the device library
BROKEN-aarch64=	*** BFD does not support target aarch64-unknown-openbsd6.2.

DISTNAME=	sdcc-src-3.8.0
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	devel

HOMEPAGE=	http://sdcc.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m readline z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

# clang6 makes sdcc regenerate its configure scripts at *BUILD* time
# so we need to add the autoconf/automake depends. We don't know
# why this is.
DPB_PROPERTIES +=	nojunk

# c++11
COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/boost
RUN_DEPENDS=		devel/gputils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV+=		sdcc_cv_CCggdb=no \
                        sdcc_cv_c_fms_extensions=no \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE=		Yes
MAKE_ENV=		AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
			AUTOMAKE_VERSION="${AUTOMAKE_VERSION}"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11

WRKDIST=		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
