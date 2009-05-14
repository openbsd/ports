# $OpenBSD: Makefile,v 1.102 2009/05/14 17:05:46 giovanni Exp $

COMMENT-main=	SMB and CIFS client and server for UNIX
COMMENT-docs=	additional documentation and examples for Samba

DISTNAME=		samba-3.0.34
FULLPKGNAME-docs=	${DISTNAME:S/-/-docs-/}
SHARED_LIBS=		smbclient	1.0 \
			msrpc		1.0

CATEGORIES=	net

HOMEPAGE=	http://www.samba.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses readline

MASTER_SITES=	http://download.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/old-versions/

MODULES= 	converters/libiconv

LIB_DEPENDS=	popt::devel/popt

MAKE_FLAGS=	PASSWD_PROGRAM="/usr/bin/passwd" \
		LIBsmbclient_VERSION=${LIBsmbclient_VERSION} \
		LIBmsrpc_VERSION=${LIBmsrpc_VERSION}

CONFDIR=	${SYSCONFDIR}/samba
SAMBA_LOGDIR=	/var/log
SUBST_VARS=	CONFDIR

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --disable-fam \
		--localstatedir="/var" \
		--sbindir="${PREFIX}/libexec" \
		--with-configdir="${CONFDIR}" \
		--with-libdir="${PREFIX}/lib/samba" \
		--with-lockdir="/var/spool/samba" \
		--with-piddir="/var/run" \
		--with-logfilebase="${SAMBA_LOGDIR}" \
		--with-privatedir="${CONFDIR}" \
		--with-libsmbclient \
		--with-swatdir="${PREFIX}/share/swat" \
		--with-ssl \
		--with-sslinc="/usr/include/ssl" \
		--with-ssllib="/usr/lib" \
		--with-syslog \
		--with-utmp
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -Wl,--export-dynamic"

FLAVORS=        cups ldap ads
FLAVOR?=

MULTI_PACKAGES= -main -docs

.if ${FLAVOR:L:Mcups}
LIB_DEPENDS+=	cups::print/cups
WANTLIB+=	gcrypt gnutls gpg-error intl tasn1 m pthread z
.else
CONFIGURE_ARGS+= --disable-cups
.endif

.if ${FLAVOR:L:Mldap} && ${FLAVOR:L:Mads}
ERRORS+="Fatal: ldap and ads flavors conflict"
.endif

.if ${FLAVOR:L:Mldap} || ${FLAVOR:L:Mads}
LIB_DEPENDS+=	ldap,lber::databases/openldap
BUILD_DEPENDS+=	::misc/libutf8
.else
CONFIGURE_ARGS+= --without-ldap
.endif

.if ${FLAVOR:L:Mads}
CONFIGURE_ARGS+= --with-krb5="${WRKDIR}/usr"
WANTLIB+=	asn1 com_err gssapi krb5
.else
CONFIGURE_ARGS+= --without-ads
.endif

.if ${FLAVOR:L:Mads}
WANTLIB+=	crypto
.endif

PKG_ARCH-docs=	*
LIB_DEPENDS-docs=
WANTLIB-docs=
RUN_DEPENDS-docs=

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/source

SAMBA_DOCS=${WRKSRC}/../README \
        ${WRKSRC}/../docs/history \
        ${WRKSRC}/../docs/registry/*.reg

SAMPLE_CONFIG=	${PREFIX}/share/examples/samba/smb.conf.default

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/../docs/manpages/swat.8

post-extract:
	@cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	@chmod a+x ${WRKDIR}/bin/krb5-config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/pdf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/htmldocs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/samba
	@cp -R ${WRKSRC}/../examples/* ${PREFIX}/share/examples/samba
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/samba
	@find ${PREFIX}/share/examples/samba -type f | \
	    xargs chmod ${SHAREMODE}
	@find ${PREFIX}/share/examples/samba -type d | \
	    xargs chmod ${DIRMODE}
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/samba
	@for i in ${SAMBA_DOCS}; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba ;	\
	done
	@for i in ${WRKSRC}/../docs/*.pdf ; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/pdf ; \
	done
	@for i in ${WRKSRC}/../docs/htmldocs/* ; do \
	 if [ -f $$i ]; then \
	  ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/htmldocs ;\
	 fi \
	done
	@sed -e 's:/usr/spool/samba:/var/spool/samba:g' \
	 -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	 ${WRKSRC}/../examples/smb.conf.default > ${SAMPLE_CONFIG}
	${INSTALL_SCRIPT} ${WRKSRC}/script/mksmbpasswd.sh \
	 ${PREFIX}/bin/mksmbpasswd
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/smbpasswd
	@ln -s samba/libsmbclient.so.${LIBsmbclient_VERSION} \
	 ${PREFIX}/lib/libsmbclient.so.${LIBsmbclient_VERSION}
	@ln -s samba/libmsrpc.so.${LIBmsrpc_VERSION} \
	 ${PREFIX}/lib/libmsrpc.so.${LIBmsrpc_VERSION}
	@rmdir ${WRKINST}${SYSCONFDIR}/samba
	@rmdir ${WRKINST}/var/spool/samba

.include <bsd.port.mk>
