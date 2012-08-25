# $OpenBSD: Makefile,v 1.24 2012/08/25 13:19:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-3.1

CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL c crypto expat h323 kvm lber ldap ldap_r m netsnmp
WANTLIB += netsnmpagent netsnmpmibs pt pthread sasl2 ssh ssl stdc++
WANTLIB += wrap

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

BUILD_DEPENDS=	databases/mysql \
		databases/postgresql

LIB_DEPENDS=	net/h323plus>=1.24.0p0 \
		net/net-snmp \
		security/libssh

USE_GMAKE=	Yes
ALL_TARGET=	optshared # XXX gkdefault
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTLIBDIR=`ptlib-config --ptlibdir`
CONFIGURE_ARGS=	--disable-firebird \
		--disable-unixodbc \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql

# patented
CONFIGURE_ARGS += --disable-h46018

MAKE_ENV=	CC=${CC} CPLUS=${CXX} \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323" \
		INSTALLBIN_DIR=${WRKINST}${TRUEPREFIX}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/gnugk.1 ${WRKSRC}/configure

post-build:
	cd ${WRKSRC}/addpasswd && \
		OBJDIR=. \
		SYSLIBDIR=`ptlib-config --libdir` \
		PTLIBDIR=`ptlib-config --ptlibdir` ${MAKE_PROGRAM}

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
