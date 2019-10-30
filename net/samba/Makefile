# $OpenBSD: Makefile,v 1.280 2019/10/30 13:03:11 jca Exp $

VERSION =		4.9.15
DISTNAME =		samba-${VERSION}

COMMENT-main =		SMB and CIFS client and server for UNIX
COMMENT-ldb =		LDAP-like embedded database
COMMENT-tevent =	event system based on talloc
COMMENT-util =		common libraries for Samba suite
COMMENT-docs =		additional documentation and examples for Samba

PKGNAME-main =		${PKGNAME}
PKGNAME-ldb =		ldb-${LDB_V}
PKGNAME-tevent =	tevent-${TEVENT_V}
PKGNAME-util =		samba-util-${VERSION}
PKGNAME-docs =		samba-docs-${VERSION}

PKG_ARCH-docs =		*

LDB_V =			1.4.8
TEVENT_V =		0.9.37

REVISION-tevent =	0

SHARED_LIBS =		asn1-samba4		0.0 \
			com_err-samba4		0.0 \
			dcerpc			0.0 \
			dcerpc-binding		1.1 \
			dcerpc-samr		0.0 \
			dcerpc-server		5.0 \
			gssapi-samba4		0.0 \
			hcrypto-samba4		0.0 \
			hdb-samba4		0.0 \
			heimbase-samba4		0.0 \
			heimntlm-samba4		0.0 \
			hx509-samba4		0.0 \
			kdc-samba4		0.0 \
			krb5-samba4		0.1 \
			ldb			0.9 \
			ndr			0.3 \
			ndr-krb5pac		0.1 \
			ndr-nbt			0.1 \
			ndr-standard		3.0 \
			netapi			2.1 \
			pyldb-util		0.5 \
			roken-samba4		0.0 \
			samba-credentials	0.2 \
			samba-errors		1.0 \
			samba-hostconfig	4.1 \
			samba-passdb		2.1 \
			samba-policy		0.0 \
			samba-util		4.0 \
			samdb			0.2 \
			smbclient		4.3 \
			smbconf			6.0 \
			smbldap			0.1 \
			tevent			0.5 \
			tevent-util		1.1 \
			wbclient		3.2 \
			wind-samba4		0.0 \
			replace			9.0 \
			util-setid		9.0

CATEGORIES =		net sysutils security

HOMEPAGE =		https://www.samba.org/

MAINTAINER =		Ian McWilliam <kaosagnt@gmail.com>, \
			Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3, LGPLv3
PERMIT_PACKAGE =	Yes

UTIL_LIBS =		replace util-setid
# TODO WAF scripts link to those without version info, but those are
# not "plugins" or such.
UTIL_WANTLIB =		${UTIL_LIBS:S@^@lib/samba/@}

WANTLIB-common =	c pthread

WANTLIB-main =		${WANTLIB-common} ${MODPY_WANTLIB}
WANTLIB-main +=		crypto curses m util z
WANTLIB-main +=		avahi-client avahi-common cups dbus-1 execinfo fam
WANTLIB-main +=		iconv intl jansson lber ldap pam popt gnutls
WANTLIB-main +=		ldb pyldb-util pytalloc-util readline tdb talloc tevent
WANTLIB-main +=		${UTIL_WANTLIB}

WANTLIB-ldb =		${WANTLIB-common} ${MODPY_WANTLIB}
WANTLIB-ldb +=		lber ldap popt m talloc tdb tevent util

WANTLIB-tevent =	${WANTLIB-common} ${MODPY_WANTLIB}
WANTLIB-tevent +=	m talloc util

WANTLIB-util =		${WANTLIB-common}

WANTLIB-docs =

MASTER_SITES =		https://filedump.se.rit.edu/pub/distfiles/ \
			https://download.samba.org/pub/samba/stable/ \
			https://download.samba.org/pub/samba/old-versions/

MULTI_PACKAGES =	-main -ldb -tevent -util -docs

MODULES =		lang/python perl

BUILD_DEPENDS =		devel/cmocka \
			devel/p5-Parse-Yapp>=1.0.5 \
			net/py-dnspython \
			textproc/docbook-xsl \
			x11/dbus

RUN_DEPENDS-main =	net/py-dnspython

RUN_DEPENDS-docs =

LIB_DEPENDS-main =	${BUILD_PKGPATH},-ldb>=${LDB_V} \
			${BUILD_PKGPATH},-util>=${VERSION} \
			converters/libiconv \
			databases/openldap \
			databases/tdb>=1.3.14 \
			devel/gettext,-runtime \
			devel/jansson \
			devel/libexecinfo \
			devel/libtalloc>=2.1.9 \
			devel/popt \
			net/avahi \
			print/cups,-libs \
			security/gnutls \
			security/openpam \
			sysutils/gamin

LIB_DEPENDS-ldb =	${BUILD_PKGPATH},-tevent>=${TEVENT_V} \
			devel/popt \
			databases/openldap \
			databases/tdb>=1.3.14 \
			devel/libtalloc>=2.1.9

LIB_DEPENDS-tevent =	devel/libtalloc>=2.1.9

LIB_DEPENDS-docs =

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--enable-fhs \
			--abi-check-disable \
			--bundled-libraries="!crypto,ldb,!talloc,!tdb,tevent" \
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
			--with-bind-dns-dir=${VARBASE}/samba/bind-dns \
			--with-lockdir=${VARBASE}/run/samba \
			--with-privileged-socket-dir=${VARBASE}/samba \
			--without-pie \
			--pedantic \
			--without-regedit \
			--without-acl-support \
			--without-libarchive \
			--disable-rpath \
			--with-ntvfs-fileserver \
			--without-gpgme \
			--without-ldb-lmdb

# XXX Remember to remove --enable-developer, it prints passwords in logs.
#CONFIGURE_ARGS +=	--enable-developer

WAF =			${WRKSRC}/buildtools/bin/waf
WAF_ARGS =		-v -j ${MAKE_JOBS}

CONFIGURE_ENV =		LC_ALL=en_US.UTF-8 \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}" \
			CPP="/usr/libexec/cpp"

MAKE_ENV =		LC_ALL=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			WAF_ARGS="${WAF_ARGS}"

.for _l _v in ${SHARED_LIBS}
MAKE_ENV +=		LIB${_l:S/-/_/g}_VERSION=${_v}
.endfor

SAMBA_CONFIG =		${PREFIX}/share/examples/samba/smb.conf.default
SAMBA_LOGDIR =		${VARBASE}/log/samba

SUBST_VARS =		SAMBA_LOGDIR

post-patch:
	find ${WRKSRC} -type f | xargs ${MODPY_BIN_ADJ}

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
	# fix path to perl modules
	mv ${PREFIX}/share/perl5/* ${PREFIX}/${P5SITE}
	# precompiling Python modules
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	${MODPY_BIN} -O ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	# removing extra symlinks
	find ${PREFIX}/lib -type l -name '*.so' -exec rm {} ';'
	# creating library symlinks
.for _l in ${UTIL_LIBS}
	cd ${PREFIX}/lib && ln -fs samba/lib${_l}.so.${LIB${_l}_VERSION}
.endfor
	# install samba docs and sample config
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/samba
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
