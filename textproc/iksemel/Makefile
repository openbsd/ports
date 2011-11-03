# $OpenBSD: Makefile,v 1.10 2011/11/03 20:13:20 jasper Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.4
REVISION=		2

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		http://code.google.com/p/iksemel/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp gnutls hogweed nettle pthread tasn1 z p11-kit

MASTER_SITES=		http://iksemel.googlecode.com/files/

MODULES=		devel/gettext

LIB_DEPENDS=		security/gnutls

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
