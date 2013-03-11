# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:01 espie Exp $

COMMENT=automatic text creation from templates
CATEGORIES=devel

V=		5.8.7
DISTNAME=	autogen-${V}
REVISION=	2
SHARED_LIBS +=	opts                 27.5     # .27.5
SHARED_LIBS +=	guileopts            1.0      # .0.1
HOMEPAGE=http://autogen.sourceforge.net/
MASTER_SITES=${MASTER_SITE_GNU:=autogen/rel${V}/}

# GPLv2
PERMIT_PACKAGE_CDROM=Yes

MODULES=	devel/gettext

WANTLIB=	c gmp ltdl m pthread z guile xml2
LIB_DEPENDS=	lang/guile \
		textproc/libxml
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-libregex \
		--includedir=${PREFIX}/include/autogen \
		${ENABLE_SHARED}

MAKE_FLAGS+=	INFO_DEPS=
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
.include <bsd.port.mk>
