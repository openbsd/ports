# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:03 espie Exp $

COMMENT=	fast lexical analyzer generator

DISTNAME=	flex-2.5.35
CATEGORIES=	devel textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=flex/}

HOMEPAGE=	http://flex.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/help2man \
		devel/bison

YACC=		bison
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--includedir=${PREFIX}/include/flex \
		--libdir=${PREFIX}/lib/flex \
		--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_M4=/usr/bin/m4

.include <bsd.port.mk>
