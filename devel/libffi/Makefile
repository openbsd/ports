# $OpenBSD: Makefile,v 1.3 2009/09/25 15:59:15 jasper Exp $

# hppa, m88k, vax - not tested yet
# mips64 - OpenBSD doesn't provide a cacheflush/cachectl (yet)
NOT_FOR_ARCHS= 		hppa m88k mips64 vax

COMMENT=		Foreign Function Interface

DISTNAME=		libffi-3.0.8
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  ffi                  0.0      # .5.9
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/libffi/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://sourceware.org/pub/libffi/

REGRESS_DEPENDS=	::devel/dejagnu

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
