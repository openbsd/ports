# $OpenBSD: Makefile,v 1.14 2012/08/05 00:16:50 naddy Exp $

# XXX: cannot be updated to a newer version before the binutils in base
# is updated to 2.17.

# m88k - not tested yet, will it ever?
# vax - libffi hasn't been ported to vax, and most likely never will.
NOT_FOR_ARCHS= 		m88k vax

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.0.9
SHARED_LIBS +=  ffi                  0.0      # .5.9
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/libffi/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

REGRESS_DEPENDS=	devel/dejagnu

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FAKE_FLAGS+=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
