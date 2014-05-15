# $OpenBSD: Makefile,v 1.17 2014/05/15 21:24:33 sthen Exp $

D=		20140506-r13398
V=		3.5pre${D:C/-.*//}
REVISION=	0
DISTNAME=	squid-3.HEAD-$D
EXTRACT_SUFX=	.tar.bz2

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

BUILD_DEPENDS+=	devel/cppunit
# alternatively set ac_cv_path_CPPUNITCONFIG=false to disable
LIB_DEPENDS+=	security/gnutls
MODULES+=	devel/gettext
WANTLIB+=	ffi gmp gnutls hogweed p11-kit tasn1 z

AUTOCONF_VERSION?= 2.69
AUTOMAKE_VERSION?= 1.14
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    LOCALBASE=${LOCALBASE} ./bootstrap.sh

.include <bsd.port.mk>
