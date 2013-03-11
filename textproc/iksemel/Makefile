# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:42 espie Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.4
REVISION=		2

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		http://code.google.com/p/iksemel/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp gnutls hogweed nettle pthread tasn1 z p11-kit

MASTER_SITES=		http://iksemel.googlecode.com/files/

MODULES=		devel/gettext

LIB_DEPENDS=		security/gnutls

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

.include <bsd.port.mk>
