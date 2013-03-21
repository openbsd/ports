# $OpenBSD: Makefile,v 1.18 2013/03/21 08:48:56 ajacoutot Exp $

COMMENT=		widgets library

DISTNAME=		Mowitz-0.3.0
PKGNAME=		${DISTNAME:L}
REVISION=		4

SHARED_LIBS +=	Mowitz               3.0      # .3.0
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/mowitz/

# GPLv2/LGPLv2/MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		m neXtaw

MASTER_SITES=		http://siag.nu/pub/mowitz/

LIB_DEPENDS=		x11/neXtaw

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		docdir=${PREFIX}/share/doc/Mowitz

.include <bsd.port.mk>
