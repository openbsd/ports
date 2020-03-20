# $OpenBSD: Makefile,v 1.287 2020/03/20 16:44:26 naddy Exp $

VERSION =		4.9.18
DISTNAME =		samba-${VERSION}
EPOCH =			0

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

REVISION-ldb =		1
REVISION-tevent =	0

SHARED_LIBS =		asn1-samba4		0.0 \
			com_err-samba4		0.0 \
			dcerpc			0.0 \
			dcerpc-binding		2.0 \
			dcerpc-samr		0.0 \
			dcerpc-server		7.0 \
			gssapi-samba4		0.0 \
			hcrypto-samba4		0.0 \
			hdb-samba4		0.0 \
			heimbase-samba4		0.0 \
			heimntlm-samba4		0.0 \
			hx509-samba4		0.0 \
			kdc-samba4		0.0 \
			krb5-samba4		0.1 \
			ldb			1.0 \
			ndr			1.0 \
			ndr-krb5pac		0.1 \
			ndr-nbt			0.1 \
			ndr-standard		3.0 \
			netapi			2.1 \
			pyldb-util		0.5 \
			roken-samba4		0.0 \
			samba-credentials	0.2 \
			samba-errors		1.0 \
			samba-hostconfig	6.0 \
			samba-passdb		2.1 \
			samba-policy		0.0 \
			samba-util		5.0 \
			samdb			0.2 \
			smbclient		5.0 \
			smbconf			8.0 \
			smbldap			0.1 \
			tevent			0.5 \
			tevent-util		1.1 \
			wbclient		4.0 \
			wind-samba4		0.0 \
			replace			11.0 \
			util-setid		11.0

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
WANTLIB-main +=		z
WANTLIB-main +=		avahi-client avahi-common cups dbus-1 execinfo fam
WANTLIB-main +=		iconv intl jansson lber ldap pam popt gnutls
WANTLIB-main +=		ldb pyldb-util pytalloc-util readline tdb talloc tevent
WANTLIB-main +=		${UTIL_WANTLIB}

WANTLIB-ldb =		${WANTLIB-common} ${MODPY_WANTLIB}
WANTLIB-ldb +=		lber ldap popt talloc tdb tevent

WANTLIB-tevent =	${WANTLIB-common} ${MODPY_WANTLIB}
WANTLIB-tevent +=	talloc

WANTLIB-util =		${WANTLIB-common}

WANTLIB-docs =

MASTER_SITES =		https://download.samba.org/pub/samba/stable/ \
			https://download.samba.org/pub/samba/old-versions/

MULTI_PACKAGES =	-main -ldb -tevent -util -docs
DEBUG_PACKAGES =	${BUILD_PACKAGES}

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
			databases/tdb>=1.3.18 \
			devel/gettext,-runtime \
			devel/jansson \
			devel/libexecinfo \
			devel/libtalloc>=2.1.16 \
			devel/popt \
			net/avahi \
			print/cups,-libs \
			security/gnutls \
			security/openpam \
			sysutils/gamin

LIB_DEPENDS-ldb =	${BUILD_PKGPATH},-tevent>=${TEVENT_V} \
			devel/popt \
			databases/openldap \
			databases/tdb>=1.3.18 \
			devel/libtalloc>=2.1.16

LIB_DEPENDS-tevent =	devel/libtalloc>=2.1.16

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
			CPP="/usr/libexec/cpp" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

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
	find ${WRKSRC} -type f -exec ${MODPY_BIN_ADJ} {} +

post-install:
	# removing extra files
	find ${PREFIX} \( \
	    -name '*${PATCHORIG}' -o \
	    -name '*.beforesubst' -o \
	    -name '*.deconforig' \) \
		-delete
	# fix path to perl modules
	mv ${PREFIX}/share/perl5/* ${PREFIX}/${P5SITE}
	# precompiling Python modules
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	${MODPY_BIN} -O ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	# removing extra symlinks
	find ${PREFIX}/lib -type l -name '*.so' -delete
	# creating library symlinks
.for _l in ${UTIL_LIBS}
	cd ${PREFIX}/lib && ln -fs samba/lib${_l}.so.${LIB${_l}_VERSION}
.endfor
	# install samba docs and sample config
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/samba
	cp -R ${WRKDIST}/examples/* ${PREFIX}/share/examples/samba
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/samba
	find ${PREFIX}/share/examples/samba \
	     -type f -exec chmod ${SHAREMODE} {} + -o \
	     -type d -exec chmod ${DIRMODE} {} +
	sed -e 's:/usr/spool/samba:/var/spool/samba:g' \
	     -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	     -e 's:MYGROUP:WORKGROUP:' \
	     ${WRKDIST}/examples/smb.conf.default > ${SAMBA_CONFIG}.tmp && \
	    mv ${SAMBA_CONFIG}.tmp ${SAMBA_CONFIG}

.include <bsd.port.mk>
