# $OpenBSD: Makefile,v 1.54 2000/03/25 05:53:20 brad Exp $

DISTNAME=       ssh-1.2.27
CATEGORIES=	security net
NEED_VERSION=	1.230
MASTER_SITES=	http://the.wiretapped.net/security/cryptography/ssh/SSH/ \
		ftp://ftp.cs.hut.fi/pub/ssh/ \
		ftp://ftp.funet.fi/pub/unix/security/login/ssh/ \
		ftp://ftp.cert.dfn.de/pub/tools/net/ssh/
MASTER_SITES0=	http://www.ssh.org/patches/ \
		ftp://ftp2.inch.com/pub/FreeBSD/
PATCHFILES=	patch-${DISTNAME}-bsd.tty.chown:0
PATCH_DIST_STRIP= -p1

MAINTAINER=	todd@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
LIB_DEPENDS=	rsaref.2::security/rsaref
CONFIGURE_ARGS+= --with-rsaref="${LOCALBASE}/lib"
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
.endif

FAKE=	Yes

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+=--with-etcdir="${ETCDIR}" \
		--with-rsh="${RSHPROG}" \
		--with-libwrap

FAKE_FLAGS=	install_prefix="${WRKINST}"

IS_INTERACTIVE=	Yes

.if defined(X11) && ${X11:U} == NO
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

# Include SOCKS firewall support
.if defined(USE_SOCKS) && ${USE_SOCKS:U} == YES
CONFIGURE_ARGS+= --with-socks="-L${LOCALBASE}/lib -lsocks5" --with-socks5
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

ETCDIR?=	/etc
RSHPROG?=	/usr/bin/rsh

pre-patch:
	@mv -f ${WRKSRC}/make-ssh-known-hosts.pl \
	    ${WRKSRC}/make-ssh-known-hosts.pl.in

fetch-depends:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@echo ""
	@echo "You must set variable USA_RESIDENT to YES if you are a USA"
	@echo "resident or NO otherwise.  USA residents must obtain the"
	@echo "RSAREF2 library to generate this program.  \(RSA Inc. holds"
	@echo "a patent on RSA in the USA - using RSA implementations"
	@echo "other than RSAREF in the USA will violate the US patent\)."
	@echo ""
	@echo "RSAREF2 will be automatically obtained and used to generate"
	@echo "this program when given the command \"make USA_RESIDENT=YES\""
	@echo ""
	@false
.endif
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ssh
	@cat ${WRKSRC}/server_config.sample | \
	  sed "s#_ETCDIR_#${ETCDIR}#g" > /tmp/ssh_inst.$$$$; \
	  ${INSTALL_DATA} /tmp/ssh_inst.$$$$ ${PREFIX}/lib/ssh/server_config.sample
	${INSTALL_DATA} ${WRKSRC}/host_config.sample ${PREFIX}/lib/ssh
	@rm -f ${PREFIX}/man/man1/slogin.1
	cd ${PREFIX}/man/man1; ln -fs ssh.1 slogin.1

.include <bsd.port.mk>
