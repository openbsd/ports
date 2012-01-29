# $OpenBSD: Makefile,v 1.21 2012/01/29 10:37:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 gatekeeper

DISTNAME=	gnugk-3.0.1

CATEGORIES=	net telephony

HOMEPAGE=	http://www.gnugk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += SDL avutil c crypto expat h323 lber ldap ldap_r m pt
WANTLIB += pthread sasl2 ssh ssl stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openh323gk/}

BUILD_DEPENDS=	databases/mysql \
		databases/postgresql \
		databases/sqlite3

LIB_DEPENDS=	net/h323plus \
		security/libssh

USE_GMAKE=	Yes
ALL_TARGET=	optshared # XXX gkdefault
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-radius \
		--enable-sqlite \
		--enable-mysql \
		--enable-pgsql \
		--enable-h46023 \
		--disable-firebird \
		--disable-unixodbc \
		--with-pgsql-include-dir=${LOCALBASE}/include/postgresql

# patented
CONFIGURE_ARGS += --disable-h46018

MAKE_ENV=	CC=${CC} CPLUS=${CXX} \
		STDCCFLAGS="${STDCCFLAGS} -I${LOCALBASE}/include/openh323" \
		INSTALLBIN_DIR=${WRKINST}${TRUEPREFIX}/bin

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/gnugk.1
	perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/configure

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
