# $OpenBSD: Makefile,v 1.41 2001/06/25 15:14:26 dhartmei Exp $

COMMENT=	"SMB and CIFS client and server for UNIX"

DISTNAME=	samba-2.2.0a
CATEGORIES=	net
NEED_VERSION=	1.396

HOMEPAGE=	http://www.samba.org/

MAINTAINER=	Daniel Hartmeier <daniel@benzedrine.cx>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.samba.org/pub/samba/ \
		http://us1.samba.org/samba/ftp/ \
		ftp://ca.samba.org/pub/samba/ \
		ftp://ftp.uni-trier.de/pub/unix/network/samba/ \
		ftp://ring.asahi-net.or.jp/pub/net/samba/

FAKE_FLAGS+=	prefix="${WRKINST}${PREFIX}" \
		BASEDIR="${WRKINST}${PREFIX}" \
		LIBDIR="${WRKINST}${PREFIX}/lib/samba" \
		SWATDIR="${WRKINST}${PREFIX}/share/swat" \
		SBINDIR="${WRKINST}${PREFIX}/libexec"

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=	--libdir="${PREFIX}/lib/samba" \
		--localstatedir="/var" \
		--sbindir="${PREFIX}/libexec" \
		--with-acl-support \
		--with-configdir="${SYSCONFDIR}/samba" \
		--with-lockdir="/var/spool/lock" \
		--with-privatedir="${SYSCONFDIR}/samba" \
		--with-swatdir="${PREFIX}/share/swat" \
		--with-ssl \
		--with-sslinc=/usr/include/ssl \
		--with-ssllib=/usr/lib

# Warning: these aditional options have not been tested.
#CONFIGURE_ARGS+=       --with-afs
#CONFIGURE_ARGS+=       --with-dfs
#CONFIGURE_ARGS+=       --with-krb4=/etc/kerberosIV
#CONFIGURE_ARGS+=       --with-krb5=base-dir

MAKE_FLAGS=	PASSWD_PROGRAM="/usr/bin/passwd"

WRKDIST=	${WRKDIR}/${DISTNAME}/source

SAMBA_SPOOL=	/var/spool/samba
SAMBA_LOGDIR=	/var/log

SAMBA_DOCS=${WRKSRC}/../README \
	${WRKSRC}/../docs/THANKS \
	${WRKSRC}/../docs/history \
	${WRKSRC}/../docs/announce \
	${WRKSRC}/../docs/*.reg
SAMPLE_CONFIG=	${PREFIX}/share/examples/samba/smb.conf.default

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/faq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/samba/textdocs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/samba
	@cp -r ${WRKSRC}/../examples/* ${PREFIX}/share/examples/samba
	@chown -R root.bin ${PREFIX}/share/examples/samba
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/samba
	@for i in ${SAMBA_DOCS}; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba ;	\
	done
	@for i in ${WRKSRC}/../docs/faq/* ; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/faq ; \
	done
	@for i in ${WRKSRC}/../docs/textdocs/* ; do \
	 ${INSTALL_DATA} $$i ${PREFIX}/share/doc/samba/textdocs ;\
	done
	@sed -e 's:/usr/spool/samba:${SAMBA_SPOOL}:g' \
	 -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	 ${WRKSRC}/../examples/smb.conf.default > ${SAMPLE_CONFIG}
	${INSTALL_SCRIPT} ${WRKSRC}/script/mksmbpasswd.sh ${PREFIX}/bin
	@chown root.bin ${PREFIX}/bin/smbpasswd
	@chmod 111 ${PREFIX}/bin/smbpasswd

.include <bsd.port.mk>

