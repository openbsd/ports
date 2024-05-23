COMMENT-main =	  LDAP client library and tools
COMMENT-server =  LDAP directory server

DISTNAME =	  openldap-2.6.8

MULTI_PACKAGES =  -main -server
PKGNAME-main =	  ${DISTNAME:S/-/-client-/}
EXTRACT_SUFX =		.tgz
# aci only affects the server; override pkgname/path for the client
FULLPKGNAME-main = ${DISTNAME:S/-/-client-/}${FLAVOR_EXT:S/-aci//}
FULLPKGPATH-main = databases/openldap,-main${FLAVOR_EXT:S/-aci//:S/-/,/g}
EPOCH =		0

SHARED_LIBS +=	lber	16.0
SHARED_LIBS +=	ldap	16.0

CATEGORIES =	databases net

HOMEPAGE =	https://www.openldap.org/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB=	c crypto pthread sasl2 ssl
WANTLIB-server=	${WANTLIB} lber ldap ltdl m perl sodium

SITES =		https://openldap.org/software/download/OpenLDAP/openldap-release/ \
		https://mirror.eu.oneandone.net/software/openldap/ \
		https://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/

COMPILER =		base-clang ports-gcc
DPB_PROPERTIES =	parallel
DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION =	2.71
CONFIGURE_STYLE =	autoconf
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/build
USE_GMAKE =		Yes

FLAVOR ?=
FLAVORS =		aci gssapi

CONFIGURE_ARGS +=	--enable-dynamic \
			--enable-ipv6 \
			--with-tls=openssl

# lloadd needs the ports version of libevent, autoconf check
# needs tweaking for this
CONFIGURE_ARGS +=	--disable-balancer
# --enable-balancer / --enable-balancer=mod

# options
CONFIGURE_ARGS +=	--enable-argon2 \
			--enable-cleartext \
			--enable-crypt \
			--enable-modules \
			--enable-spasswd \
			--with-argon2=libsodium \
			--with-cyrus-sasl

# default to using modules rather than linked in to slapd directly
# doing this enables everything by default rather than having a mix of
# on/off so some are either disabled below or set to 'yes' to link in
# directly. link in the mdb backend and syncprov overlay to slapd
# itself so in the common case there's no need to change config to
# load modules.
CONFIGURE_ARGS +=	--enable-backends=mod \
			--enable-mdb=yes \
			--enable-overlays=mod \
			--enable-syncprov=yes

# disabled backends (other available backends are built as modules)
CONFIGURE_ARGS +=	--disable-passwd \
			--disable-sock \
			--disable-sql \
			--disable-wt

# aci cannot be built as a module
.if ${FLAVOR:Maci}
CONFIGURE_ARGS +=	--enable-dynacl \
			--enable-aci
.endif

.if ${FLAVOR:Mgssapi}
CONFIGURE_ARGS +=	--enable-gssapi=${LOCALBASE}/heimdal
MODULES += security/heimdal
WANTLIB += heimdal/lib/gssapi
WANTLIB += heimdal/lib/heimntlm
WANTLIB += heimdal/lib/heimsqlite
.endif

LIB_DEPENDS +=		security/cyrus-sasl2
LIB_DEPENDS-server =	${LIB_DEPENDS} \
			${BUILD_PKGPATH},-main \
			devel/libtool,-ltdl \
			security/libsodium

CPPFLAGS =		-I${LOCALBASE}/include/sasl -I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib -Wl,--export-dynamic
CFLAGS +=		-Wno-format-extra-args
CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

# bypass autoconf check for OpenSSL 1.1.1+ function which is not
# actually used in OpenLDAP code
CONFIGURE_ENV +=	ac_cv_lib_ssl_SSL_export_keying_material_early=yes

# just to allow lining up @samples in PLISTs
LDAP_SYSCONF =		${SYSCONFDIR}/openldap
SUBST_VARS +=		LDAP_SYSCONF

post-extract:
	${INSTALL_SCRIPT} ${FILESDIR}/soelim.awk ${WRKDIR}/bin/soelim

post-build:
	cd ${WRKSRC}/contrib/slapd-modules/passwd/totp; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	CC="${CC}" OPT="${CFLAGS}"

# mv config files rather than overriding in FAKE_FLAGS; the filenames
# are merged into manpages during fake-install
post-install:
	mv ${WRKINST}${SYSCONFDIR}/openldap ${PREFIX}/share/examples/
	rm ${PREFIX}/share/examples/openldap/*.default

	cd ${WRKSRC}/contrib/slapd-modules/passwd/totp; \
	${SETENV} ${MAKE_ENV} ${FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	mandir=${TRUEPREFIX}/man install

TEST_TARGET =		test
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

pre-test:
	ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

.include <bsd.port.mk>
