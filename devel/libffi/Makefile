# $OpenBSD: Makefile,v 1.40 2019/07/12 20:44:38 sthen Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.2.1
REVISION=		5
SHARED_LIBS +=  ffi                  1.2      # .6.4
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		https://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE=	Yes

# needed for unwind symbols
.if ${MACHINE_ARCH} == "arm"
WANTLIB += c++abi
.endif

MASTER_SITES=		https://sourceware.org/pub/libffi/ \
			ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
