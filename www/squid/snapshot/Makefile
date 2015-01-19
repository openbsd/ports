# $OpenBSD: Makefile,v 1.24 2015/01/19 08:35:43 sthen Exp $

#BROKEN=		sslbump uses functions removed in libressl

V=		3.5.0.4

# future versions will be requiring c++11 support, so let's build
# the devel version in squid/snapshot with a newer compiler to get
# experience with it. (other parts in ../Makefile.inc as it's
# already required for ppc).
MODGCC4_ARCHS=	*

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota session \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

LIB_DEPENDS+=	security/gnutls
MODULES+=	devel/gettext
WANTLIB+=	ffi gmp gnutls hogweed p11-kit tasn1 z

AUTOCONF_VERSION?= 2.69
AUTOMAKE_VERSION?= 1.14
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

# for stable version, replace with setting ac_cv_path_CPPUNITCONFIG=false
BUILD_DEPENDS+=	devel/cppunit

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    LOCALBASE=${LOCALBASE} ./bootstrap.sh

.include <bsd.port.mk>
