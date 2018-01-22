# $OpenBSD: Makefile,v 1.36 2018/01/22 06:28:00 bcallah Exp $

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.2.1
REVISION=		3
SHARED_LIBS +=  ffi                  1.2      # .6.4
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread
# needed for unwind symbols
.if ${MACHINE_ARCH} == "arm"
WANTLIB += c++abi
.endif

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
