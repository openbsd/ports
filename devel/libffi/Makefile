# $OpenBSD: Makefile,v 1.34 2016/03/23 22:50:29 sthen Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.2.1
REVISION=		1
SHARED_LIBS +=  ffi                  1.2      # .6.4
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
