# $OpenBSD: Makefile,v 1.21 2018/03/07 21:34:43 bcallah Exp $

COMMENT=	Small Device C Compiler
BROKEN-sparc64=	illegal operands building SDCCval.c
BROKEN-alpha=	sdcc segfaults when building the device library
BROKEN-aarch64=	*** BFD does not support target aarch64-unknown-openbsd6.2.

DISTNAME=	sdcc-src-3.7.0
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	devel

HOMEPAGE=	http://sdcc.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses m ${COMPILER_LIBCXX} readline z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/boost
RUN_DEPENDS=		devel/gputils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV+=		sdcc_cv_CCggdb=no \
                        sdcc_cv_c_fms_extensions=no \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/sdcc

.include <bsd.port.mk>
