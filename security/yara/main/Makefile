# $OpenBSD: Makefile,v 1.1.1.1 2015/09/18 21:35:32 rpointel Exp $

COMMENT = pattern matching swiss knife

WANTLIB += c crypto m pthread

SHARED_LIBS +=  yara                      0.0 # 0.0

CONFIGURE_STYLE =       gnu
CONFIGURE_ARGS +=	--with-crypto

pre-patch:
	cd ${WRKSRC} && \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} ./bootstrap.sh

BUILD_DEPENDS +=	devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.14

.include <bsd.port.mk>
