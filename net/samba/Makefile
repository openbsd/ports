# $OpenBSD: Makefile,v 1.23 1999/12/29 07:19:38 brad Exp $

DISTNAME=	samba-2.0.5a
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	Peter.Galbavy@knowledge.com

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--libdir="${PREFIX}/lib/samba" \
		--localstatedir="/var" \
		--with-privatedir="/etc/samba" \
		--with-lockdir="/var/spool/lock" \
		--with-swatdir="/usr/local/swat"

# Warning: these aditional options have not been tested.

# uncomment these to add SSL support, note that this is only useful
# for connections with other samba clients, Windows machines do not
# support SSL encrypted SMB
#CONFIGURE_ARGS+=	--with-ssl
#CONFIGURE_ARGS+=	--with-sslinc=/usr/include/ssl

# uncomment this if you want to build the smbwrapper library
#CONFIGURE_ARGS+=	--with-smbwrapper

# uncomment this if you want to include support for AFS
#CONFIGURE_ARGS+=	--with-afs

# uncomment this if you want to include support for DFS
#CONFIGURE_ARGS+=	--with-dfs

# uncomment this if you want support for Kerberos IV
#CONFIGURE_ARGS+=	--with-krb4=/etc/kerberosIV

# uncomment this if you want support for Kerberos 5
#CONFIGURE_ARGS+=	--with-krb5=base-dir

# uncomment this if you want LDAP support
#CONFIGURE_ARGS+=	--with-ldap

# uncomment this if you want NISPLUS password database support
#CONFIGURE_ARGS+=	--with-nisplus

# uncomment this if you want NISPLUS_HOME support
#CONFIGURE_ARGS+=	--with-nisplus-home

WRKSRC=	${WRKDIR}/${DISTNAME}/source

SAMBA_SPOOL=	/var/spool/samba
SAMBA_LOGDIR=	/var/log

SAMBA_DOCS=${WRKSRC}/../README \
	${WRKSRC}/../docs/THANKS \
	${WRKSRC}/../docs/history \
	${WRKSRC}/../docs/announce \
	${WRKSRC}/../docs/*.reg
SAMPLE_CONFIG=	${PREFIX}/lib/samba/smb.conf.sample

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
	@if [ ! -f ${SAMPLE_CONFIG} ]; then \
	 sed -e 's:/usr/spool/samba/:${SAMBA_SPOOL}:g' \
	 -e 's:/usr/local/samba/var/log:${SAMBA_LOGDIR}/smbd:g' \
	 ${WRKSRC}/../examples/smb.conf.default > ${SAMPLE_CONFIG} ; \
	fi
	${INSTALL_SCRIPT} ${WRKSRC}/script/mksmbpasswd.sh ${PREFIX}/bin
	@chown root.bin ${PREFIX}/bin/smbpasswd
	@chmod 111 ${PREFIX}/bin/smbpasswd
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
