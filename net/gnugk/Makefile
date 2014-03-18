# $OpenBSD: Makefile,v 1.38 2014/03/18 09:01:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

V=		3.5
DISTNAME=	gnugk-${V}
REVISION=	0

WRKDIST=	${WRKDIR}/gnugk-${V}

CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL c crypto expat h323 kvm lber ldap ldap_r lua5.1
WANTLIB += m netsnmp netsnmpagent netsnmpmibs pt pthread sasl2
WANTLIB += ssh ssl stdc++ wrap

MODULES=	lang/lua

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

BUILD_DEPENDS=	databases/mysql \
		databases/postgresql

LIB_DEPENDS=	net/h323plus \
		net/net-snmp \
		security/libssh

ALL_TARGET=	optshared #XXX gkdefault
USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTLIBDIR=`ptlib-config --ptlibdir`

CONFIGURE_ARGS=	--disable-firebird \
		--disable-unixodbc \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql \
		--with-lua-include-dir=${MODLUA_INCL_DIR} \
		--with-lua-lib-dir=${LOCALBASE}/lib

# patented
CONFIGURE_ARGS += --disable-h46018

MAKE_ENV=	VERBOSE=1 \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323"

FAKE_FLAGS=	INSTALLBIN_DIR=${WRKINST}${TRUEPREFIX}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/gnugk.1 ${WRKSRC}/configure
	perl -pi -e 's,-llua,-llua${MODLUA_DEFAULT_VERSION} -lm,g' ${WRKSRC}/configure

post-build:
	cd ${WRKSRC}/addpasswd && \
		OBJDIR=. \
		SYSLIBDIR=`ptlib-config --libdir` \
		PTLIBDIR=`ptlib-config --ptlibdir` ${MAKE_ENV} ${MAKE_PROGRAM}

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnugk/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnugk/
	${INSTALL_MAN} ${WRKSRC}/docs/gnugk.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/gnugk/
	cp ${WRKSRC}/etc/* ${PREFIX}/share/examples/gnugk/
	${INSTALL_PROGRAM} ${WRKSRC}/addpasswd/addpasswd \
		${PREFIX}/bin/addpasswd

.include <bsd.port.mk>
