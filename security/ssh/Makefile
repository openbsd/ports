# $OpenBSD: Makefile,v 1.37 1999/10/07 05:23:58 turan Exp $

DISTNAME=       ssh-1.2.27
CATEGORIES=	security net
MASTER_SITES= 	ftp://ftp.funet.fi/pub/unix/security/login/ssh/ \
		ftp://ftp.cs.hut.fi/pub/ssh/

PATCH_SITES=	http://www.ssh.fi/sshprotocols2/patches/
PATCHFILES=	patch-${DISTNAME}-bsd.tty.chown
PATCH_DIST_STRIP= -p1

NEED_VERSION=	1.121

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"

MAINTAINER=	todd@openbsd.org

.if defined(NO_WARNINGS) || (defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES)
MASTER_SITES0=	ftp://nic.funet.fi/pub/crypt/mirrors/ftp.dsi.unimi.it/applied-crypto/ \
		ftp://idea.dsi.unimi.it/pub/security/crypt/math/
DISTFILES=	${DISTNAME}.tar.gz rsaref2.tar.gz:0
.endif

ETCDIR?=	/etc
RSHPROG?=	/usr/bin/rsh

IS_INTERACTIVE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-etcdir=${ETCDIR} \
		--with-rsh=${RSHPROG} \
		--with-libwrap
CONFIGURE_ENV= PERL=/usr/bin/perl

.if defined(X11) && ${X11} == NO
CONFIGURE_ARGS= --without-x
.endif

#Uncomment if all your users are in their own group and their homedir
#is writeable by that group.  Beware the security implications!
#
#CONFIGURE_ARGS+= --enable-group-writeability

#Uncomment if you want to allow ssh to emulate an unencrypted rsh connection
#over a secure medium.  This is normally dangerous since it can lead to the
#disclosure keys and passwords.
#
#CONFIGURE_ARGS+= --with-none

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
CONFIGURE_ARGS+= --with-rsaref
.endif

# Include SOCKS firewall support
.if defined(USE_SOCKS) && ${USE_SOCKS:U} == YES
CONFIGURE_ARGS+= --with-socks="-L${PREFIX}/lib -lsocks5" --with-socks5
.endif

# Include support for the SecureID card
# Warning: untested !
.if defined(USE_SECUREID) && ${USE_SECUREID:U} == YES
CONFIGURE_ARGS+= --with-secureid
.endif

# Don't use IDEA. IDEA can be freely used for non-commercial use. However,
# commercial use may require a licence in a number of countries
#
.if defined(DONT_USE_IDEA) && ${DONT_USE_IDEA:U} == YES
CONFIGURE_ARGS+= --without-idea
.endif

pre-patch:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@${CP} ${FILESDIR}/patch-rsaref2 ${PATCHDIR}
.endif
	@${MV} -f ${WRKSRC}/make-ssh-known-hosts.pl \
	    ${WRKSRC}/make-ssh-known-hosts.pl.in

post-patch:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@${RM} ${PATCHDIR}/patch-rsaref2
.endif

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@${ECHO}
	@${ECHO} You must set variable USA_RESIDENT to YES if you are a USA
	@${ECHO} resident or NO otherwise.  USA residents must obtain the
	@${ECHO} RSAREF2 library to generate this program.  \(RSA Inc. holds
	@${ECHO} a patent on RSA in the USA - using RSA implementations
	@${ECHO} other than RSAREF in the USA will violate the US patent\).
	@${ECHO} ""
	@${ECHO} RSAREF2 will be automatically obtained and used to generate
	@${ECHO} this program when given the command \"make USA_RESIDENT=YES\"
	@${ECHO} ""
	@${FALSE}
.endif
.endif

post-extract:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@${MV} ${WRKDIR}/rsaref2 ${WRKSRC}/rsaref2
.endif

# Put the config files someplace where they can be found to
# create a package.
#
post-install:
	@${MKDIR} ${PREFIX}/etc
	@${MKDIR} ${PREFIX}/lib/ssh
	@cat ${WRKSRC}/server_config.sample | \
	  ${SED} "s#_ETCDIR_#${ETCDIR}#g" > /tmp/ssh_inst.$$$$; \
	  ${INSTALL_DATA} /tmp/ssh_inst.$$$$ ${PREFIX}/lib/ssh/server_config.sample
	@${INSTALL_DATA} ${WRKSRC}/host_config.sample ${PREFIX}/lib/ssh
	@if [ ! -f ${ETCDIR}/ssh_host_key ]; then \
		${ECHO} "Generating a secret host key..."; \
		${PREFIX}/bin/ssh-keygen -f ${ETCDIR}/ssh_host_key -N ""; \
	fi
	${RM} -f ${PREFIX}/man/man1/slogin.1
	${LN} -sf ssh.1 ${PREFIX}/man/man1/slogin.1
	@${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
