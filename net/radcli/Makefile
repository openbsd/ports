# $OpenBSD: Makefile,v 1.1.1.1 2015/11/23 15:10:06 sthen Exp $

COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               0.0      # 5.0

V=		1.2.4
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	http://radcli.github.io/radcli/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gmp gnutls hogweed nettle p11-kit pthread tasn1 z

MASTER_SITES=	https://github.com/radcli/radcli/releases/download/$V/

MODULES=	devel/gettext
LIB_DEPENDS=	security/gnutls

CONFIGURE_STYLE= gnu
FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

.include <bsd.port.mk>
