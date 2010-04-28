# $OpenBSD: Makefile,v 1.112 2010/04/28 08:02:38 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		SMB and CIFS client and server for UNIX
COMMENT-docs=		additional documentation and examples for Samba

DISTNAME=		samba-3.5.2
PKGNAME-main=		${DISTNAME}p0
FULLPKGNAME-docs=	${DISTNAME:S/-/-docs-/}
FULLPKGPATH-docs=	net/samba,-docs
SHARED_LIBS=		smbclient	2.0 \
			smbsharemodes	0.0 \
			netapi		0.0 \
			addns		0.0 \
			wbclient	0.0

CATEGORIES=		net

HOMEPAGE=		http://www.samba.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c ncurses pthread readline z

MASTER_SITES=	http://download.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/old-versions/

MODULES=	converters/libiconv

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
LIB_DEPENDS=	tdb.>=2:tdb->=1.2:databases/tdb \
		popt::devel/popt \
		execinfo::devel/libexecinfo \
		talloc::devel/libtalloc

MAKE_FLAGS+=	PASSWD_PROGRAM="/usr/bin/passwd"  \
		LIBSMBCLIENT_SOVER="${LIBsmbclient_VERSION}" \
		LIBSMBSHAREMODES_SOVER="${LIBsmbsharemodes_VERSION}" \
		LIBNETAPI_SOVER="${LIBnetapi_VERSION}" \
		LIBADDNS_SOVER="${LIBaddns_VERSION}" \
		LIBWBCLIENT_SOVER="${LIBwbclient_VERSION}"

CONFDIR=		${SYSCONFDIR}/samba
SAMBA_LOGDIR=		/var/log/samba
SUBST_VARS=		CONFDIR

USE_GMAKE=		yes
SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.63

CONFIGURE_ARGS=		--disable-fam \
			--localstatedir="/var" \
			--libdir="${PREFIX}/lib/samba" \
			--sbindir="${PREFIX}/libexec" \
			--with-configdir="${CONFDIR}" \
			--with-modulesdir="${PREFIX}/lib/samba" \
			--with-lockdir="/var/spool/samba" \
			--with-piddir="/var/run" \
			--with-logfilebase="${SAMBA_LOGDIR}" \
			--with-privatedir="${CONFDIR}" \
			--with-libsmbclient \
			--with-swatdir="${PREFIX}/share/swat" \
			--with-syslog \
			--with-utmp \
			--with-winbind \
			--with-pthreads \
			--with-wbclient \
			--enable-avahi=no \
			--enable-external-libtdb=yes \
			--enable-external-libtalloc=yes

# Uncomment to enable debugging symbols.
#CONFIGURE_ARGS+=	--enable-debug

LDFLAGS+=		-L${LOCALBASE}/lib -Wl,--export-dynamic -Wl,--no-as-needed
CONFIGURE_ENV=		CPPFLAGS+="-I${LOCALBASE}/include" LDFLAGS="${LDFLAGS}"

FLAVORS=	  	cups ldap ads
FLAVOR?=

MULTI_PACKAGES=		-main -docs

.if ${FLAVOR:L:Mcups}
LIB_DEPENDS+=		cups::print/cups
WANTLIB+= 		asn1 crypto gssapi krb5 m ssl z
.else
CONFIGURE_ARGS+= --disable-cups
.endif

.if ${FLAVOR:L:Mldap} && ${FLAVOR:L:Mads}
ERRORS+= "Fatal: ldap and ads flavors conflict"
.endif

.if ${FLAVOR:L:Mldap} || ${FLAVOR:L:Mads}
LIB_DEPENDS+=	ldap,lber::databases/openldap
BUILD_DEPENDS+=	::misc/libutf8
.else
CONFIGURE_ARGS+= 	--without-ldap
.endif

.if ${FLAVOR:L:Mads}
CONFIGURE_ARGS+= 	--with-krb5="${WRKDIR}/usr"

# Merged build cruft needs loads of work. Disable until ready.
#SEPERATE_BUILD=	simple
#CONFIGURE_ARGS+=	--enable-merged-build
#MODULES+=		lang/python
#MODPY_RUNDEP=		No

WANTLIB+=		asn1 com_err crypto gssapi krb5
.else
CONFIGURE_ARGS+=	--without-ads
.endif

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
WANTLIB-docs=
RUN_DEPENDS-docs=

REGRESS_TARGET=		torture

WRKDIST=	${WRKDIR}/${DISTNAME}/source3

SAMBA_DOCS=	${WRKSRC}/../README \
        	${WRKSRC}/../docs/history \
        	${WRKSRC}/../docs/registry/*.reg

SAMPLE_CONFIG=	${PREFIX}/share/examples/samba/smb.conf.default

SAMBA_MANPAGES= ${WRKSRC}/../docs/manpages

post-patch:
	cd ${WRKSRC}; \
            AUTOCONF_VERSION=${AUTOCONF_VERSION} \
            ./autogen.sh

pre-configure:
	@${SUBST_CMD} ${SAMBA_MANPAGES}/swat.8

# Samba's man pages kill OpenBSD's groff/nroff/man implementation.
# This workaround will be needed until the new usr.bin/mandoc is
# finished and enabled.
post-extract:
	@cp ${FILESDIR}/krb5-config ${WRKDIR}/bin
	@chmod a+x ${WRKDIR}/bin/krb5-config
	@for file in ${SAMBA_MANPAGES}/*; do \
	 if [ -f $$file ]; then \
	  cp $$file $$file.crap; \
	  sed -e 's:\\FC::g' -e 's:\\F\[\]::g' -e 's:\.\\\":\ \\\":g' \
	   -e 's:SH-xref:Sx:g' -e 's:\\m\[\]::g' -e 's:toupper:tu:g' \
	   -e 's:\.\.\\\":\\\":g' -e 's:^.tu :\\":g' -e's:\\m\[blue\]::g' \
	   -e's:\\m\[\]::g' $$file.crap  > $$file; \
	 fi; \
	done

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
	@ln -s samba/libsmbsharemodes.so.${LIBsmbsharemodes_VERSION} \
	 ${PREFIX}/lib/libsmbsharemodes.so.${LIBsmbsharemodes_VERSION}
	@ln -s samba/libnetapi.so.${LIBnetapi_VERSION} \
	 ${PREFIX}/lib/libnetapi.so.${LIBnetapi_VERSION}
	@ln -s samba/libwbclient.so.${LIBwbclient_VERSION} \
	 ${PREFIX}/lib/libwbclient.so.${LIBwbclient_VERSION}
	@rmdir ${WRKINST}${SYSCONFDIR}/samba
	@rmdir ${WRKINST}/var/spool/samba

.include <bsd.port.mk>
