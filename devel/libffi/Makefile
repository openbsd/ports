# $OpenBSD: Makefile,v 1.38 2018/11/02 18:27:16 naddy Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.2.1
REVISION=		5
SHARED_LIBS +=  ffi                  1.2      # .6.4
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		https://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# needed for unwind symbols
.if ${MACHINE_ARCH} == "arm"
WANTLIB += c++abi
.endif

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
