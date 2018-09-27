# $OpenBSD: Makefile,v 1.2 2018/09/27 07:25:31 bentley Exp $

COMMENT =	library for parsing/normalizing street addresses

GH_ACCOUNT =	openvenues
GH_PROJECT =	libpostal
GH_TAGNAME =	v1.0.0
REVISION =	0

SHARED_LIBS +=	postal	0.0	# 1.0

CATEGORIES =	geo

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

AUTOMAKE_VERSION = 1.15
AUTOCONF_VERSION = 2.69

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS +=	--datadir=${LOCALSTATEDIR}/db \
			--disable-data-download

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse2=yes
.else
CONFIGURE_ARGS +=	--enable-sse2=no
.endif

NO_TEST =	Yes

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./bootstrap.sh

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/address_parser ${PREFIX}/bin
	rm ${PREFIX}/bin/libpostal_data

.include <bsd.port.mk>
