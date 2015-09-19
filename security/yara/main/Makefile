# $OpenBSD: Makefile,v 1.2 2015/09/19 17:39:55 rpointel Exp $

REVISION = 0

COMMENT = pattern matching swiss knife

WANTLIB += c crypto m magic pthread z

SHARED_LIBS +=  yara                      0.0 # 0.0

CONFIGURE_STYLE =       gnu
CONFIGURE_ARGS +=	--with-crypto \
			--enable-magic
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include"

pre-patch:
	cd ${WRKSRC} && \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} ./bootstrap.sh

BUILD_DEPENDS +=	devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS +=		devel/libmagic

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.14

.include <bsd.port.mk>
