# $OpenBSD: Makefile,v 1.30 2015/04/24 13:48:27 dcoppa Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.1
REVISION=		0
SHARED_LIBS +=  ffi                  1.1      # .6.2
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
