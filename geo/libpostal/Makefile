COMMENT =	library for parsing/normalizing street addresses

GH_ACCOUNT =	openvenues
GH_PROJECT =	libpostal
GH_TAGNAME =	v1.1

SHARED_LIBS +=	postal	1.0	# 1.1

CATEGORIES =	geo

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	m

AUTOMAKE_VERSION = 1.15
AUTOCONF_VERSION = 2.69
AUTORECONF =	./bootstrap.sh

CONFIGURE_STYLE = autoreconf

CONFIGURE_ARGS +=	--datadir=${LOCALSTATEDIR}/db \
			--disable-data-download

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse2=yes
.else
CONFIGURE_ARGS +=	--enable-sse2=no
.endif

NO_TEST =	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/address_parser ${PREFIX}/bin
	rm ${PREFIX}/bin/libpostal_data

.include <bsd.port.mk>
