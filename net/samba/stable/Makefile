# $OpenBSD: Makefile,v 1.16 2003/04/07 19:32:40 brad Exp $

COMMENT=	"SMB and CIFS client and server for UNIX"

DISTNAME=	samba-2.2.8a
CATEGORIES=	net
MASTER_SITES=	http://us1.samba.org/samba/ftp/ \
		http://us2.samba.org/samba/ftp/ \
		http://us3.samba.org/samba/ftp/ \
		http://us4.samba.org/samba/ftp/ \
		http://se.samba.org/samba/ftp/ \
		ftp://ftp.samba.org/pub/samba/ \
		ftp://ca.samba.org/pub/samba/ \
		ftp://ftp.ring.gr.jp/pub/net/samba/

HOMEPAGE=	http://www.samba.org/

LIB_DEPENDS=	popt::devel/popt

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	PASSWD_PROGRAM="/usr/bin/passwd"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}" \
		BASEDIR="${WRKINST}${PREFIX}" \
		LIBDIR="${WRKINST}${PREFIX}/lib/samba" \
		PIDDIR="${WRKINST}/var/run" \
		SWATDIR="${WRKINST}${PREFIX}/share/swat" \
		SBINDIR="${WRKINST}${PREFIX}/libexec" \
		VARDIR="${WRKINST}/var"

SYSCONFDIR=	/etc/samba
SAMBA_SPOOL=	/var/spool/samba
SAMBA_LOGDIR=	/var/log
SUBST_VARS=	SAMBA_SPOOL

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--libdir="${PREFIX}/lib/samba" \
		--localstatedir="/var" \
		--sbindir="${PREFIX}/libexec" \
		--disable-cups \
		--with-configdir="${SYSCONFDIR}" \
		--with-lockdir="${SAMBA_SPOOL}" \
		--with-piddir="/var/run" \
		--with-logfilebase="${SAMBA_LOGDIR}" \
		--with-privatedir="${SYSCONFDIR}" \
		--with-swatdir="${PREFIX}/share/swat" \
		--with-ssl \
		--with-sslinc="/usr/include/ssl" \
		--with-ssllib="/usr/lib"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# Warning: these aditional options have not been tested.
#CONFIGURE_ARGS+=       --with-afs
#CONFIGURE_ARGS+=       --with-dfs
#CONFIGURE_ARGS+=       --with-krb4=/etc/kerberosIV
#CONFIGURE_ARGS+=       --with-krb5=base-dir

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/source

SAMBA_DOCS=${WRKSRC}/../README \
	${WRKSRC}/../docs/THANKS \
	${WRKSRC}/../docs/history \
	${WRKSRC}/../docs/announce \
	${WRKSRC}/../docs/Registry/*.reg
SAMPLE_CONFIG=	${PREFIX}/share/examples/samba/smb.conf.default

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/faq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/textdocs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/samba
	@cp -R ${WRKSRC}/../examples/* ${PREFIX}/share/examples/samba
	@chown -R root.bin ${PREFIX}/share/examples/samba
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/samba
	@for i in ${SAMBA_DOCS}; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba ;	\
	done
	@for i in ${WRKSRC}/../docs/faq/* ; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/faq ; \
	done
	@for i in ${WRKSRC}/../docs/textdocs/* ; do \
	 if [ -f $$i ]; then \
	  ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/textdocs ;\
	 fi \
	done
	@sed -e 's:/usr/spool/samba:${SAMBA_SPOOL}:g' \
	 -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	 ${WRKSRC}/../examples/smb.conf.default > ${SAMPLE_CONFIG}
	${INSTALL_SCRIPT} ${WRKSRC}/script/mksmbpasswd.sh ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/script/convert_smbpasswd ${PREFIX}/bin
	@chown root.bin ${PREFIX}/bin/smbpasswd
	@chmod 111 ${PREFIX}/bin/smbpasswd

.include <bsd.port.mk>
