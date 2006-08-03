# $OpenBSD: Makefile,v 1.11 2006/08/03 23:28:12 espie Exp $

COMMENT=	"generates or checks digests or mac"

DISTNAME=	shash-0.2.6
CATEGORIES=     security

HOMEPAGE=	http://mcrypt.hellug.gr/shash/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://mcrypt.hellug.gr/pub/mcrypt/shash/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CFLAGS='-I${LOCALBASE}/include -L${LOCALBASE}/lib'

FLAVORS=		static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
BUILD_DEPENDS+=		::security/mhash
CONFIGURE_ARGS+=	--enable-static-link
.else
LIB_DEPENDS+=		mhash.>=2::security/mhash
WANTLIB=		c pthread
.endif

.include <bsd.port.mk>
