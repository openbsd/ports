# $OpenBSD: Makefile,v 1.19 2015/02/16 22:57:12 naddy Exp $

COMMENT=	generates or checks digests or mac

DISTNAME=	shash-0.2.6
REVISION=	0
CATEGORIES=     security

HOMEPAGE=	http://mcrypt.hellug.gr/shash/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

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
