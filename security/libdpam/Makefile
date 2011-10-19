# $OpenBSD: Makefile,v 1.4 2011/10/19 13:53:57 jasper Exp $

COMMENT=	dummy Pluggable Authentication Modules (PAM)

SHARED_LIBS+=	pam	5.0

DISTNAME=	libdpam-20110117
CATEGORIES=	security

REVISION=	1

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

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/security

.include <bsd.port.mk>
