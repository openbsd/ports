# $OpenBSD: Makefile,v 1.3 2017/02/18 17:32:37 ajacoutot Exp $

COMMENT=	simple RADIUS client library

SHARED_LIBS +=	radcli               0.1      # 5.1

V=		1.2.5
DISTNAME=	radcli-$V

CATEGORIES=	net

HOMEPAGE=	http://radcli.github.io/radcli/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# recent code BSD, some old MERIT/Livingston
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gmp gnutls hogweed idn2 nettle p11-kit pthread tasn1
WANTLIB += z

MASTER_SITES=	https://github.com/radcli/radcli/releases/download/$V/

MODULES=	devel/gettext
LIB_DEPENDS=	security/gnutls

CONFIGURE_STYLE= gnu
FAKE_FLAGS=	pkgsysconfdir=${PREFIX}/share/examples/radcli

.include <bsd.port.mk>
