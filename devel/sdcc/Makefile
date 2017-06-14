# $OpenBSD: Makefile,v 1.14 2017/06/14 07:38:17 benoit Exp $

COMMENT=	Small Device C Compiler
BROKEN-sparc64=	illegal operands building SDCCval.c
BROKEN-alpha=	sdcc segfaults when building the device library

DISTNAME=	sdcc-src-3.6.0
PKGNAME=	${DISTNAME:S/-src//}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	devel

HOMEPAGE=	http://sdcc.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@devio.us>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ${LIBCXX} readline termcap z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gputils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV+=		sdcc_cv_CCggdb="no" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
