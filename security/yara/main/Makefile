# $OpenBSD: Makefile,v 1.5 2019/05/20 04:47:01 naddy Exp $

COMMENT = pattern matching swiss knife

DISTNAME = yara-${VERSION}

GH_PROJECT =	yara

WANTLIB += c crypto m magic pthread z

SHARED_LIBS +=  yara                      0.0 # 0.0

CONFIGURE_STYLE =       autoreconf
CONFIGURE_ARGS +=	--with-crypto \
			--enable-magic
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS +=		devel/libmagic

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION =      1.14
AUTORECONF =		./bootstrap.sh

.include <bsd.port.mk>
