# $OpenBSD: Makefile,v 1.16 2015/09/14 07:02:44 ajacoutot Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.4
REVISION=		5

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		https://code.google.com/p/iksemel/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp gnutls hogweed nettle p11-kit pthread tasn1 z

MASTER_SITES=		https://iksemel.googlecode.com/files/

MODULES=		devel/gettext

LIB_DEPENDS=		security/gnutls

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi

.include <bsd.port.mk>
