# $OpenBSD: Makefile,v 1.13 2017/04/10 11:45:27 sthen Exp $

COMMENT=	Small Device C Compiler
BROKEN-sparc64=	illegal operands building SDCCval.c
BROKEN-alpha=	sdcc segfaults when building the device library

DISTNAME=	sdcc-src-2.8.0
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	devel
REVISION=	2

HOMEPAGE=	http://sdcc.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${LIBCXX} readline termcap

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gputils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV+=		sdcc_cv_CCggdb="no"

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/sdcc

.include <bsd.port.mk>
