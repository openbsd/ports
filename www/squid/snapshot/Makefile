# $OpenBSD: Makefile,v 1.35 2015/09/04 21:38:46 sthen Exp $

V=		3.5.8

# needs c++11. other parts for gcc MODULES are in ../Makefile.inc.
MODGCC4_ARCHS=	*

# uncommenting the following would use clang where possible, otherwise fallback
# to gcc, but at present linking fails with clang ("local symbol 0: discarded
# in section XXX").
#MODULES+=	lang/clang
#MODCLANG_ARCHS=	*
#MODCLANG_LANGS=	c++

EXTERNAL_ACL=	LDAP_group SQL_session file_userip time_quota \
		unix_group wbinfo_group # kerberos_ldap_group (sasl/gssapi)

CONFIGURE_ARGS=	--disable-strict-error-checking \
		--disable-arch-native \
		--enable-ssl-crtd

LIB_DEPENDS+=	security/gnutls
MODULES+=	devel/gettext
WANTLIB+=	ffi gmp gnutls hogweed p11-kit tasn1 z

BUILD_DEPENDS+=	devel/cppunit

.include <bsd.port.mk>
