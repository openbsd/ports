# $OpenBSD: Makefile,v 1.2 2011/01/17 22:03:48 ajacoutot Exp $

COMMENT=	dummy Pluggable Authentication Modules (PAM)

SHARED_LIBS+=	pam	5.0

V=		20110117
DISTNAME=	libdpam-${V}
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://blade2k.humppa.hu/libdpam/
MASTER_SITES=	${HOMEPAGE}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

INSTALL_TARGET=	install includes

NO_REGRESS=	Yes

MAKE_FLAGS=	LIBDIR="${TRUEPREFIX}/lib" \
		INCSDIR="${TRUEPREFIX}/include"

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/security

.include <bsd.port.mk>
