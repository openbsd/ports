# $OpenBSD: Makefile,v 1.4 2016/07/08 16:48:21 sthen Exp $

COMMENT=		library for easy implementation of a VNC server

DISTNAME=		LibVNCServer-0.9.10
REVISION=		1
PKGNAME=		${DISTNAME:L}

SHARED_LIBS +=  vncclient                 0.0 # 0.0
SHARED_LIBS +=  vncserver                 0.0 # 0.0

CATEGORIES=		net devel

HOMEPAGE=		https://libvnc.github.io/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ffi gcrypt gmp gnutls gpg-error hogweed jpeg
WANTLIB += m nettle p11-kit png pthread ssl tasn1 z idn

MASTER_SITES=		https://github.com/LibVNC/libvncserver/archive/

WRKDIST=		${WRKDIR}/libvncserver-${DISTNAME}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=		graphics/jpeg \
			graphics/png \
			security/gnutls \
			security/libgcrypt

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
