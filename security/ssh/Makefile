# OpenBSD makefile for:	ssh
# Version required:     1.2.21
# Date created:		16 Nov 1997
# Whom:			todd@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.12 1998/02/05 18:17:08 marc Exp $
#
# Maximal ssh package requires YES values for
# USE_PERL, USE_TCPWRAP
#

DISTNAME=       ssh-1.2.22
CATEGORIES=	security net
MASTER_SITES= 	\
		ftp://noftp.funet.fi/pub/unix/security/login/ssh/ \
		ftp://ftp.cs.hut.fi/pub/ssh/

MAINTAINER=	todd@OpenBSD.ORG

ETCDIR=		/etc

# You can set USA_RESIDENT appropriately in /etc/make.conf if this bugs you..

.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
DISTFILES=	${DISTNAME}.tar.gz rsaref2.tar.gz
MASTER_SITES=	\
	ftp://ftp.funet.fi/pub/unix/security/login/ssh/ \
	ftp://ftp.cs.hut.fi/pub/ssh/ \
	ftp://nic.funet.fi/pub/crypt/mirrors/ftp.dsi.unimi.it/applied-crypto/ \
	ftp://idea.dsi.unimi.it/pub/security/crypt/math/
.endif

RESTRICTED=	"Crypto; export-controlled"
IS_INTERACTIVE=	YES
USE_PERL=	YES
GNU_CONFIGURE=	YES

CONFIGURE_ARGS= --prefix=${PREFIX} --with-etcdir=${ETCDIR}

#Uncomment if all your users are in their own group and their homedir
#is writeable by that group.  Beware the security implications!
#CONFIGURE_ARGS+= --enable-group-writeability

#Uncomment if you want to allow ssh to emulate an unencrypted rsh connection
#over a secure medium.  This is normally dangerous since it can lead to the
#disclosure keys and passwords.
#CONFIGURE_ARGS+= --with-none

.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
CONFIGURE_ARGS+= --with-rsaref
.endif

# Include support for the SecureID card
# Warning: untested !
.if defined(USE_SECUREID) && ${USE_SECUREID} == YES
CONFIGURE_ARGS+= --with-secureid
.endif

# Don't use IDEA. IDEA can be freely used for non-commercial use. However,
# commercial use may require a licence in a number of countries
# Warning: untested !
.if defined(DONT_USE_IDEA) && ${DONT_USE_IDEA} == YES
CONFIGURE_ARGS+= --without-idea
.endif

MAN1=		scp.1 ssh-add.1 ssh-agent.1 ssh-keygen.1 ssh.1 \
		make-ssh-known-hosts.1
MAN8=		sshd.8


pre-patch:
	@${MV} -f ${WRKSRC}/make-ssh-known-hosts.pl \
	    ${WRKSRC}/make-ssh-known-hosts.pl.in

fetch-depends:
.if !defined(USA_RESIDENT) || ${USA_RESIDENT} != YES && ${USA_RESIDENT} != NO
	@echo
	@echo You must set variable USA_RESIDENT to YES if you are a USA
	@echo resident or NO otherwise.
	@echo If you are a USA resident you have to get the RSAREF2
	@echo library \(RSA Inc. holds a patent on RSA and public key
	@echo cypto in general - using RSA implementations other than
	@echo RSAREF will violate the US patent law\)
	@echo and extract it to ${WRKSRC}.
	@false
.endif

post-extract:
.if defined(USA_RESIDENT) && ${USA_RESIDENT} == YES
	@mv ${WRKDIR}/rsaref2 ${WRKSRC}/rsaref2
.endif

post-install:
	@if [ ! -f ${ETCDIR}/ssh_host_key ]; then \
		echo "Generating a secret host key..."; \
		${PREFIX}/bin/ssh-keygen -f ${ETCDIR}/ssh_host_key -N ""; \
	fi
.if !defined(NOMANCOMPRESS)
	rm -f ${PREFIX}/man/man1/slogin.1
	ln -sf ssh.1 ${PREFIX}/man/man1/slogin.1
.endif

.include <bsd.port.mk>

# Following stuff must be after <bsd.port.mk> to expand exists() properly

.if defined(USE_PERL) && ${USE_PERL} == YES || \
    exists(/usr/bin/perl) && \
    (!defined(USE_PERL) || ${USE_PERL} != NO)
CONFIGURE_ENV+= PERL=/usr/bin/perl
.else
CONFIGURE_ENV+= PERL=/replace_it_with_PERL_path
.endif

# Include tcp-wrapper support (call remote identd)
.if defined(USE_TCPWRAP) && ${USE_TCPWRAP} == YES || \
    exists(${PREFIX}/lib/libwrap.a) && \
    (!defined(USE_TCPWRAP) || ${USE_TCPWRAP} != NO)
CONFIGURE_ENV+= LDFLAGS=-L${PREFIX}/lib CFLAGS="${CFLAGS} -I${PREFIX}/include"
CONFIGURE_ARGS+= --with-libwrap
LIB_DEPENDS+=   wrap\\.7\\.:${PORTSDIR}/security/tcp_wrapper
.endif

# Include SOCKS firewall support
.if defined(USE_SOCKS) && ${USE_SOCKS} == YES
CONFIGURE_ARGS+= --with-socks="-L${PREFIX}/lib -lsocks5" --with-socks5
.endif
