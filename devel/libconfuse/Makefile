# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:37 sthen Exp $

COMMENT=		configuration file parser library
V=			3.2.1
DISTNAME=		confuse-${V}
PKGNAME=		lib${DISTNAME}
SHARED_LIBS +=  confuse              2.1      # 2.0
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		https://github.com/martinh/libconfuse

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=		iconv intl

MASTER_SITES=		https://github.com/martinh/libconfuse/releases/download/v${V}/

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
