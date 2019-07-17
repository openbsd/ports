# $OpenBSD: Makefile,v 1.23 2019/07/17 14:39:42 danj Exp $

COMMENT=	generates or checks digests or mac

DISTNAME=	shash-0.2.6
REVISION=	3
CATEGORIES=     security

HOMEPAGE=	http://mcrypt.hellug.gr/shash/

PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://mcrypt.hellug.gr/pub/mcrypt/shash/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CFLAGS='-I${LOCALBASE}/include -L${LOCALBASE}/lib'

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:Mstatic}
BUILD_DEPENDS+=		security/mhash
CONFIGURE_ARGS+=	--enable-static-link
.else
LIB_DEPENDS+=		security/mhash
WANTLIB=		c pthread mhash>=2
.endif

.include <bsd.port.mk>
