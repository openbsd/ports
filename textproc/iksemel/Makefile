# $OpenBSD: Makefile,v 1.1.1.1 2007/09/04 15:05:27 sthen Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.2

SHARED_LIBS=		iksemel		0.0	# .3.0

CATEGORIES=		textproc net

HOMEPAGE=		http://code.google.com/p/iksemel/

MAINTAINER=		Stuart Henderson <stu@spacehopper.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://iksemel.googlecode.com/files/

WANTLIB=		c gcrypt gpg-error iconv intl z
LIB_DEPENDS=		gnutls.>=12::security/gnutls

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libgnutls-prefix=${LOCALBASE} \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
