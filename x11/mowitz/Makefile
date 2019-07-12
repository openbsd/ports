# $OpenBSD: Makefile,v 1.21 2019/07/12 20:51:17 sthen Exp $

COMMENT=		widgets library

DISTNAME=		Mowitz-0.3.1
PKGNAME=		${DISTNAME:L}

SHARED_LIBS +=	Mowitz               3.0      # .3.0
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/mowitz/

# GPLv2/LGPLv2/MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		m neXtaw

MASTER_SITES=		http://siag.nu/pub/mowitz/

LIB_DEPENDS=		x11/neXtaw

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		docdir=${PREFIX}/share/doc/Mowitz

.include <bsd.port.mk>
