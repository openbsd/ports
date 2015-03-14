# $OpenBSD: Makefile,v 1.26 2015/03/14 21:07:04 sthen Exp $

V=		3.5.2

# needs c++11. other parts for gcc MODULES are in ../Makefile.inc.
MODGCC_ARCHS=	*

# uncommenting the following would use clang where possible, otherwise fallback
# to gcc, but at present linking fails with clang ("local symbol 0: discarded
# in section XXX").
#MODULES+=	lang/clang
#MODCLANG_ARCHS=	*
#MODCLANG_LANGS=	c++

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
