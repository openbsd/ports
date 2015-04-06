# $OpenBSD: Makefile,v 1.29 2015/04/06 12:11:39 jasper Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.1
SHARED_LIBS +=  ffi                  1.1      # .6.2
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
