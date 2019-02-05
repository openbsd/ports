# $OpenBSD: Makefile,v 1.27 2019/02/05 09:33:50 ajacoutot Exp $

COMMENT=	PDF transformation and inspection utility

DISTNAME=	qpdf-8.4.0

SHARED_LIBS +=  qpdf                 6.3      # 25.0

CATEGORIES=	print graphics

HOMEPAGE=	http://qpdf.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c jpeg m ${COMPILER_LIBCXX} z

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qpdf/}

USE_GMAKE=	Yes

SUBST_VARS=	MAKE_PROGRAM

LIB_DEPENDS=	graphics/jpeg

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_FOP= \
		ac_cv_prog_XSLTPROC= \
		ac_cv_prog_XMLLINT=

.include <bsd.port.mk>
