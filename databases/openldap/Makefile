# $OpenBSD: Makefile,v 1.7 2001/02/18 22:22:30 brad Exp $

MULTI_PACKAGES=	-client
SUBPACKAGE?=

VERSION=	2.0.7
DISTNAME=	openldap-${VERSION}
CATEGORIES=	databases net
NEED_VERSION=	1.338

.if ${SUBPACKAGE} == "-client"
PKGNAME=	openldapclient-${VERSION}
.else
PKGNAME=	openldap-${VERSION}
.endif

HOMEPAGE=	http://www.openldap.org/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		ftp://ftp.net.lut.ac.uk/openldap/openldap-release/ \
		ftp://sunsite.cnlab-switch.ch/mirror/OpenLDAP/openldap-release/ \
		ftp://mirror.aarnet.edu.au/pub/OpenLDAP/openldap-release/ \
		ftp://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://www.unibase.cz/ldapcz/Programy/Free/OpenLDAP/openldap-release/ \
		ftp://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--without-kerberos \
			--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-phonetic \
			--enable-wrappers \
			--enable-dnssrv \
			--enable-ldap \
			--enable-shell \
			--enable-slurpd

FLAVORS=	sasl
FLAVOR?=

.if ${FLAVOR:L} == "sasl"
CONFIGURE_ARGS+=	--with-cyrus-sasl \
			--enable-spasswd
CONFIGURE_ENV+=		CPPFLAGS="-I${PREFIX}/include/sasl" \
			LIBS="-L${PREFIX}/lib -lkrb"
LIB_DEPENDS+=		sasl::security/cyrus-sasl
.else
CONFIGURE_ARGS+=	--without-cyrus-sasl \
			--disable-spasswd
.endif

pre-build:
	cd ${WRKBUILD} ; make depend

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}/etc/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}/etc/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema

.include <bsd.port.mk>
