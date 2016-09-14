# $OpenBSD: Makefile,v 1.3 2016/09/14 20:40:53 rpointel Exp $

COMMENT = pattern matching swiss knife

DISTNAME = yara-${VERSION}

GH_PROJECT =	yara

WANTLIB += c crypto m magic pthread z

SHARED_LIBS +=  yara                      0.0 # 0.0

CONFIGURE_STYLE =       gnu
CONFIGURE_ARGS +=	--with-crypto \
			--enable-magic
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib/eopenssl -L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include/eopenssl -I${LOCALBASE}/include"

pre-patch:
	cd ${WRKSRC} && \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} ./bootstrap.sh

BUILD_DEPENDS +=	devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			${RUN_DEPENDS}
RUN_DEPENDS +=		security/openssl

LIB_DEPENDS +=		devel/libmagic

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.14

.include <bsd.port.mk>
