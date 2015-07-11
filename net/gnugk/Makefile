# $OpenBSD: Makefile,v 1.50 2015/07/11 08:00:39 ajacoutot Exp $

BROKEN-hppa=	libpt.so.7.0: undefined reference to __sync_fetch_and_or_4

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-3.9

CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP SDL c crypto expat h323 kvm lber ldap ldap_r
WANTLIB += lua5.1 m netsnmp netsnmpagent netsnmpmibs pt pthread
WANTLIB += sasl2 ssh ssl stdc++ z

MODULES=	lang/lua

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

BUILD_DEPENDS=	databases/mariadb \
		databases/postgresql

LIB_DEPENDS=	net/GeoIP \
		net/h323plus \
		net/net-snmp \
		security/libssh

ALL_TARGET=	optshared
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		OPENH323DIR=${LOCALBASE}/include/openh323 \
		OPENH323MAKEDIR=${LOCALBASE}/share/openh323 \
		PTLIBDIR=${LOCALBASE}/share/ptlib

CONFIGURE_ARGS=	--disable-unixodbc \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql \
		--with-lua-include-dir=${MODLUA_INCL_DIR} \
		--with-lua-lib-dir=${LOCALBASE}/lib

# sync with net/h323plus
CONFIGURE_ARGS +=--disable-h46018
CONFIGURE_ARGS +=--disable-h46023

MAKE_ENV=	VERBOSE=1
MAKE_FLAGS=	PTLIB_LIBDIR=$$(pkg-config --variable libdir ptlib) \
		OH323_LIBDIR=${LOCALBASE}/lib \
		OBJDIR=.

pre-configure:
	perl -pi -e 's,-llua,-llua${MODLUA_DEFAULT_VERSION} -lm,g' ${WRKSRC}/configure

post-build:
	cd ${WRKSRC}/addpasswd && \
		${MAKE_ENV} PTLIBDIR=${LOCALBASE}/share/ptlib ${MAKE_PROGRAM} ${MAKE_FLAGS}

# gmake: *** No rule to make target 'install'.  Stop.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gnugk \
		${PREFIX}/bin

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnugk/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugk/
	${INSTALL_MAN} ${WRKSRC}/docs/gnugk.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/gnugk/
	cp ${WRKSRC}/etc/*.* ${PREFIX}/share/examples/gnugk/
	${INSTALL_PROGRAM} ${WRKSRC}/addpasswd/addpasswd \
		${PREFIX}/bin/addpasswd

.include <bsd.port.mk>
