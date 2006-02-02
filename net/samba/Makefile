# $OpenBSD: Makefile,v 1.64 2006/02/02 09:40:43 mbalmer Exp $

COMMENT=	"SMB and CIFS client and server for UNIX"
COMMENT-docs=	"documentation and examples for samba"

DISTNAME=		samba-3.0.21b
FULLPKGNAME-docs=	${DISTNAME:S/-/-docs-/}
SHARED_LIBS=		smbclient	0.2 \
			msrpc		0.1

CATEGORIES=	net

HOMEPAGE=	http://www.samba.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses readline

MASTER_SITES=	http://us2.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/old-versions/

MODULES= 	converters/libiconv

LIB_DEPENDS=	popt::devel/popt

MAKE_FLAGS=	PASSWD_PROGRAM="/usr/bin/passwd" \
		LIBsmbclient_VERSION=${LIBsmbclient_VERSION} \
		LIBmsrpc_VERSION=${LIBmsrpc_VERSION}
FAKE_FLAGS=	DESTDIR="${DESTDIR}" \
		LIBsmbclient_VERSION=${LIBsmbclient_VERSION} \
		LIBmsrpc_VERSION=${LIBmsrpc_VERSION}

CONFDIR=        ${SYSCONFDIR}/samba
SAMBA_LOGDIR=   /var/log
SUBST_VARS=     CONFDIR LOCALBASE SYSCONFDIR

SEPARATE_BUILD= concurrent
AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS= --localstatedir="/var" \
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
		--with-utmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=        cups ldap
FLAVOR?=

MULTI_PACKAGES= -docs
SUBPACKAGE?=

.if ${FLAVOR:L:Mcups}
CONFIGURE_ARGS+= --enable-cups
LIB_DEPENDS+=	cups::print/cups
WANTLIB+=	crypto ssl
.else
CONFIGURE_ARGS+= --disable-cups
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+= --with-ldap --without-ads
LIB_DEPENDS+=	ldap,lber::databases/openldap \
		utf8::misc/libutf8
.else
CONFIGURE_ARGS+= --without-ldap --without-ads
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=	*
LIB_DEPENDS=
WANTLIB=
MODULES=
.endif

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/source

SAMBA_DOCS=${WRKSRC}/../README \
        ${WRKSRC}/../docs/THANKS \
        ${WRKSRC}/../docs/history \
        ${WRKSRC}/../docs/registry/*.reg

SAMPLE_CONFIG=	${PREFIX}/share/examples/samba/smb.conf.default

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/pdf
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/htmldocs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/samba
	@cp -R ${WRKSRC}/../examples/* ${PREFIX}/share/examples/samba
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/samba
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

.include <bsd.port.mk>
