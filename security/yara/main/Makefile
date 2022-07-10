COMMENT = pattern matching swiss knife

DISTNAME = yara-${VERSION}

GH_PROJECT =	yara

WANTLIB += c crypto jansson m magic pthread z

SHARED_LIBS +=  yara                      1.0 # 0.0

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--enable-cuckoo \
			--enable-magic \
			--with-crypto
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS +=		devel/libmagic \
			devel/jansson

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14
AUTORECONF =		./bootstrap.sh

.include <bsd.port.mk>
