# $OpenBSD: Makefile,v 1.130 2014/03/09 20:52:51 sthen Exp $

COMMENT-main =		open-source LDAP software (client)
COMMENT-server =	open-source LDAP software (server)

DISTNAME =		openldap-2.4.39
PKGNAME-main =		${DISTNAME:S/-/-client-/}
PKGNAME-server =	${DISTNAME:S/-/-server-/}


# overwrite -main pkgname/path to strip FLAVOR, aci only affects the server
FULLPKGNAME-main =	${DISTNAME:S/-/-client-/}
FULLPKGPATH-main =	databases/openldap,-main

SHARED_LIBS +=	lber                 12.0      # .10.5
SHARED_LIBS +=	ldap                 13.0      # .10.5
SHARED_LIBS +=	ldap_r               13.0      # .10.5
SHARED_LIBS +=	lber-2.4             12.0      # .10.5
SHARED_LIBS +=	ldap-2.4             13.0      # .10.5
SHARED_LIBS +=	ldap_r-2.4           13.0      # .10.5

CATEGORIES =	databases net

HOMEPAGE =	http://www.openldap.org/

# OpenLDAP Public License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += asn1 c com_err crypto gssapi heimbase
WANTLIB += krb5 roken ssl wind

MASTER_SITES =	http://mirror.switch.ch/ftp/mirror/OpenLDAP/openldap-release/ \
		http://gd.tuwien.ac.at/infosys/network/OpenLDAP/openldap-release/ \
		http://mirror.aarnet.edu.au/pub/openldap/openldap-release/ \
		ftp://ftp.OpenLDAP.org/pub/OpenLDAP/openldap-release/ \
		http://ftp.ntua.gr/mirror/OpenLDAP/openldap-release/

EXTRACT_SUFX =		.tgz

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf

USE_GROFF =		Yes

FLAVOR ?=
FLAVORS =		aci

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6 \
			--with-tls=openssl

# slapd options
CONFIGURE_ARGS +=	--enable-slapd \
			--enable-cleartext \
			--enable-crypt \
			--enable-rewrite \
			--enable-wrappers \
			--with-cyrus-sasl \
			--enable-spasswd

# slapd modules
CONFIGURE_ARGS +=	--enable-bdb \
			--enable-dnssrv \
			--enable-hdb \
			--enable-ldap \
			--enable-meta \
			--enable-monitor \
			--enable-null \
			--enable-overlays \
			--enable-passwd \
			--enable-perl \
			--enable-shell

# MDB assumes UBC; see http://www.openldap.org/pub/hyc/mdm-paper.pdf
# section 3.1, references 17, 18, and 19.
#
CONFIGURE_ARGS +=	--disable-mdb
#
# however, note (from Howard Chu): "This requirement can be relaxed in
# the current version of the library. If you create the environment
# with the MDB_WRITEMAP option then all reads and writes are performed
# using mmap, so the file buffer cache is irrelevant. Of course then
# you lose the protection that the read-only map offers."

.if ${FLAVOR:Maci}
CONFIGURE_ARGS +=	--enable-aci
.endif

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/build

TEST_TARGET =	test

MULTI_PACKAGES =	-main -server

LIB_DEPENDS +=		security/cyrus-sasl2 
WANTLIB +=		pthread sasl2
CPPFLAGS +=		-I${LOCALBASE}/include/sasl

LIB_DEPENDS-server =	${LIB_DEPENDS-main} \
			sysutils/e2fsprogs \
			textproc/icu4c \
			databases/db/v4,no_java,no_tcl

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include/sasl -I${LOCALBASE}/include/db4 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib/db4 -L${LOCALBASE}/lib"

RUN_DEPENDS-server =	databases/openldap,-main
WANTLIB-server +=	${WANTLIB} perl util wrap m icudata icuuc uuid
WANTLIB-server +=	stdc++ lib/db4/db>=4

pre-build:
	@cd ${WRKBUILD}; ${MAKE_PROGRAM} depend

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/*.conf \
		${PREFIX}/share/examples/openldap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${DESTDIR}${SYSCONFDIR}/openldap/schema/*.schema \
		 ${PREFIX}/share/examples/openldap/schema
	${INSTALL_DATA} ${WRKSRC}/servers/slapd/DB_CONFIG \
		${PREFIX}/share/examples/openldap
	@rm -rf ${DESTDIR}${SYSCONFDIR}/openldap

.include <bsd.port.mk>
