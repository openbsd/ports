# $OpenBSD: Makefile,v 1.3 2001/03/24 19:55:28 jakob Exp $

COMMENT=	generates or checks digests or mac

DISTNAME=	shash-0.2.3
CATEGORIES=     security
NEED_VERSION=	1.363

HOMEPAGE=	http://mcrypt.hellug.gr/shash/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://mcrypt.hellug.gr/shash/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CFLAGS='-I${PREFIX}/include -L${PREFIX}/lib'

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
BUILD_DEPENDS+=		${PREFIX}/lib/libmhash.a::security/mhash
CONFIGURE_ARGS+=	--enable-static-link
.else
LIB_DEPENDS+=		mhash.2::security/mhash
.endif

.include <bsd.port.mk>
