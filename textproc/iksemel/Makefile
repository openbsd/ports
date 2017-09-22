# $OpenBSD: Makefile,v 1.25 2017/09/22 20:52:58 sthen Exp $

COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.4
REVISION=		11

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		https://github.com/meduketto/iksemel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp gnutls hogweed idn2 nettle p11-kit pthread tasn1
WANTLIB += unistring z

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=iksemel/}

MODULES=		devel/gettext

LIB_DEPENDS=		security/gnutls

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

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
