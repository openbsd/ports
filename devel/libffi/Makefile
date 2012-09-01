# $OpenBSD: Makefile,v 1.15 2012/09/01 18:15:06 miod Exp $

# XXX: cannot be updated to a newer version before the binutils in base
# is updated to 2.17.

# m68k - needs ELF and serious tinkering
# m88k - missing code
# vax - libffi hasn't been ported to vax, and most likely never will.
NOT_FOR_ARCHS= 		m68k m88k vax

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
