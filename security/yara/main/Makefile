COMMENT =	pattern matching swiss knife

GH_PROJECT =	yara
GH_TAGNAME =	v4.5.8

WANTLIB += c crypto jansson m magic pthread z

SHARED_LIBS +=  yara                      3.0

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--enable-cuckoo \
			--enable-magic \
			--with-crypto
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS +=		devel/libmagic \
			devel/jansson

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./bootstrap.sh

.include <bsd.port.mk>
