# $OpenBSD: Makefile,v 1.7 2014/07/11 22:08:27 giovanni Exp $

SHARED_ONLY =		Yes
VERSION =		4.0.19
REVISION-docs =		0
DISTNAME =		samba-${VERSION}
DOCSVERSION =		v3-5-test-4c5a1b6b
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			samba-docs-${DOCSVERSION}.tar.bz2:0

COMMENT-main =		SMB and CIFS client and server for UNIX
COMMENT-ldb =		LDAP-like embedded database
#COMMENT-ntdb =		new trivial database library
COMMENT-tdb =		trivial database library
COMMENT-tevent =	event system based on talloc
COMMENT-util =		common libraries for Samba suite
COMMENT-docs =		additional documentation and examples for Samba

PKGNAME-main =		${PKGNAME}
PKGNAME-ldb =		ldb-${LDB_V}
#PKGNAME-ntdb =		ntdb-${NTDB_V}
PKGNAME-tdb =		tdb-${TDB_V}
PKGNAME-tevent =	tevent-${TEVENT_V}
PKGNAME-util =		samba-util-${TALLOC_V}
PKGNAME-docs =		samba-docs-${VERSION}

PKG_ARCH-docs =		*

LDB_V =			1.1.16
#NTDB_V =		0.9
TALLOC_V =		2.0.7
TDB_V =			1.2.11
TEVENT_V =		0.9.18

SHARED_LIBS =		asn1-samba4		0.0 \
			dcerpc			0.0 \
			dcerpc-atsvc		0.0 \
			dcerpc-binding		0.0 \
			dcerpc-samr		0.0 \
			dcerpc-server		0.0 \
			gensec			0.0 \
			gssapi-samba4		0.0 \
			hcrypto-samba4		0.0 \
			hdb-samba4		0.0 \
			heimbase-samba4		0.0 \
			heimntlm-samba4		0.0 \
			hx509-samba4		0.0 \
			kdc-samba4		0.0 \
			krb5-samba4		0.0 \
			ldb			0.0 \
			mit_samba		0.0 \
			ndr			0.0 \
			ndr-krb5pac		0.0 \
			ndr-nbt			0.0 \
			ndr-standard		0.0 \
			netapi			2.0 \
			nss_wins		0.0 \
			pdb			0.0 \
			pyldb-util		0.0 \
			pytalloc-util		0.0 \
			registry		0.0 \
			roken-samba4		0.0 \
			samba-credentials	0.0 \
			samba-hostconfig	0.0 \
			samba-policy		0.0 \
			samba-util		0.0 \
			samdb			0.0 \
			smbclient		4.0 \
			smbclient-raw		0.0 \
			smbconf			0.0 \
			smbldap			0.0 \
			smbsharemodes		2.0 \
			talloc			1.0 \
			tdb			4.0 \
			tevent			0.0 \
			tevent-util		0.0 \
			torture			0.0 \
			wbclient		2.0 \
			wind-samba4		0.0 \
			winbind_krb5_locator	0.0 \
			nss_wrapper		0.0 \
			socket_wrapper		0.0 \
			uid_wrapper		0.0 \
			replace			0.0 \
			util_setid		0.0

CATEGORIES =		net sysutils security

HOMEPAGE =		http://www.samba.org/

#MAINTAINER =		???

# GPLv3, LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

UTIL_LIBS =		nss_wrapper socket_wrapper uid_wrapper replace
UTIL_LIBS +=		util_setid
# TODO WAF scripts link to those without version info, but those are
# not "plugins" or such.
UTIL_WANTLIB =		${UTIL_LIBS:S@^@lib/samba/@} talloc

WANTLIB-common =	m pthread util ${MODPY_WANTLIB}

WANTLIB-main =		${WANTLIB-common} ${MODGETTEXT_WANTLIB}
WANTLIB-main +=		c com_err ncurses z
WANTLIB-main +=		avahi-client avahi-common cups execinfo fam iniparser
WANTLIB-main +=		lber ldap pam popt sasl2 gcrypt gnutls
WANTLIB-main +=		ldb pyldb-util pytalloc-util tdb tevent
WANTLIB-main +=		${UTIL_WANTLIB}

WANTLIB-ldb =		${WANTLIB-common} c popt tdb tevent
WANTLIB-ldb +=		${UTIL_WANTLIB}

WANTLIB-tdb =		${WANTLIB-common} c
WANTLIB-tdb +=		${UTIL_WANTLIB}

WANTLIB-tevent =	${WANTLIB-common}
WANTLIB-tevent +=	${UTIL_WANTLIB}

WANTLIB-util =		${WANTLIB-common}

WANTLIB-docs =

MASTER_SITES =		http://ftp.samba.org/pub/samba/stable/ \
			http://ftp.samba.org/pub/samba/old-versions/

MASTER_SITES0 =		http://www.samba.org/~samba-bugs/docs/v3-5-test/

MULTI_PACKAGES =	-main -ldb -tdb -tevent -util -docs
#MULTI_PACKAGES +=	-ntdb		# disabled by default in Samba4

MODULES =		devel/gettext lang/python perl

BUILD_DEPENDS =		net/py-dnspython \
			textproc/docbook-xsl \
			textproc/libxslt

RUN_DEPENDS-main =	net/py-dnspython

RUN_DEPENDS-docs =

LIB_DEPENDS-main =	${BUILD_PKGPATH},-ldb>=${LDB_V} \
			${BUILD_PKGPATH},-tdb>=${TDB_V} \
			${BUILD_PKGPATH},-util>=${TALLOC_V} \
			${MODGETTEXT_LIB_DEPENDS} \
			databases/openldap \
			devel/iniparser \
			devel/libexecinfo \
			net/avahi \
			print/cups,-libs \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libgcrypt \
			security/openpam \
			sysutils/e2fsprogs \
			sysutils/gamin
#LIB_DEPENDS-main +=	${BUILD_PKGPATH},-ntdb>=${NTDB_V}

LIB_DEPENDS-ldb =	${BUILD_PKGPATH},-tdb>=${TDB_V} \
			${BUILD_PKGPATH},-tevent>=${TEVENT_V} \
			${BUILD_PKGPATH},-util>=${TALLOC_V} \
			devel/popt

LIB_DEPENDS-tdb =	${BUILD_PKGPATH},-util>=${TALLOC_V}

LIB_DEPENDS-tevent =	${BUILD_PKGPATH},-util>=${TALLOC_V}

LIB_DEPENDS-util =	${MODPY_LIB_DEPENDS}

LIB_DEPENDS-docs =

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--enable-fhs \
			--abi-check-disable \
			--bundled-libraries="!crypto ldb ntdb talloc tdb tevent" \
			--prefix=${PREFIX} \
			--destdir=${WRKINST} \
			--docdir=${PREFIX}/share/doc \
			--mandir=${PREFIX}/man \
			--localedir=${PREFIX}/share/locale \
			--localstatedir=${BASELOCALSTATEDIR} \
			--private-libraries="NONE" \
			--sharedstatedir=${VARBASE} \
			--sysconfdir=${SYSCONFDIR} \
			--with-configdir=${SYSCONFDIR}/samba \
			--with-statedir=${VARBASE}/samba \
			--with-privatedir=${VARBASE}/samba/private \
			--with-lockdir=${VARBASE}/run/samba \
			--with-privileged-socket-dir=${VARBASE}/samba \
			--with-perl-arch-install-dir=${PREFIX}/${P5ARCH} \
			--with-perl-lib-install-dir=${PREFIX}/${P5SITE} \
			--enable-selftest \
			--pedantic

# XXX Remember to remove --enable-developer, it prints passwords in logs.
#CONFIGURE_ARGS +=	--enable-developer

WAF =			${WRKSRC}/buildtools/bin/waf
WAF_ARGS =		-v -j ${MAKE_JOBS}

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8

MAKE_ENV =		LC_ALL=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			WAF_ARGS="${WAF_ARGS}"

.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=		LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor

SAMBA_CONFIG =		${PREFIX}/share/examples/samba/smb.conf.default
SAMBA_LOGDIR =		${SYSCONFDIR}/log/samba

SUBST_VARS =		SAMBA_LOGDIR

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/lib/testtools/testtools/tests/test_compat.py

# Avoid bogus -L/usr/local/lib at the start of linker options
post-configure:
	perl -pi.ldflags -e 's/^LINKFLAGS_PYEMBED.*/LINKFLAGS_PYEMBED = []/' \
	    ${WRKBUILD}/bin/c4che/default.cache.py

post-install:
	# removing extra files
	find ${PREFIX} \
	    -name '*${PATCHORIG}' -or \
	    -name '*.beforesubst' -or \
	    -name '*.deconforig' | \
		xargs -rt rm --
	# precompiling Python modules
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	${MODPY_BIN} -O ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	# creating library symlinks
.for _l in ${UTIL_LIBS}
	cd ${PREFIX}/lib && ln -fs samba/lib${_l}.so.${LIB${_l}_VERSION}
.endfor
	# install samba docs and sample config
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/samba
	${INSTALL_DATA} ${WRKDIR}/samba-docs-${DOCSVERSION}/*.pdf \
		${PREFIX}/share/doc/samba
	cp -R ${WRKDIST}/examples/* ${PREFIX}/share/examples/samba
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/samba
	find ${PREFIX}/share/examples/samba -type f | xargs chmod ${SHAREMODE}
	find ${PREFIX}/share/examples/samba -type d | xargs chmod ${DIRMODE}
	sed -e 's:/usr/spool/samba:/var/spool/samba:g' \
	     -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	     -e 's:MYGROUP:WORKGROUP:' \
	     ${WRKDIST}/examples/smb.conf.default > ${SAMBA_CONFIG}.tmp && \
	    mv ${SAMBA_CONFIG}.tmp ${SAMBA_CONFIG}

.include <bsd.port.mk>
