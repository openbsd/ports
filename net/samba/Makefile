# OpenBSD makefile for:	samba
# Version required:			1.9.17p4
# Date created:				16 Nov 1997
# Whom:					ejovi
#
# $OpenBSD: Makefile,v 1.3 1997/11/17 21:47:37 joey Exp $

DISTNAME=	samba-1.9.17p4
CATEGORIES=	net
MASTER_SITES=	ftp://samba.anu.edu.au/pub/samba/
WRKSRC=		${WRKDIR}/${DISTNAME}/source

MAINTAINER=	joey@OpenBSD.ORG

MAN1=		smbstatus.1 smbclient.1 smbrun.1 smbtar.1 testparm.1 testprns.1
MAN5=		smb.conf.5
MAN7=		samba.7
MAN8=		smbd.8 nmbd.8 smbpasswd.8

pre-install:
	@${MKDIR} /usr/local/samba

MAKE_FLAGS=	BASEDIR=$(PREFIX)
MAKE_FLAGS+=	MANDIR=$(PREFIX)/man
MAKE_FLAGS+=	SBINDIR=$(PREFIX)/sbin 
MAKE_FLAGS+=	LIBDIR=$(PREFIX)/etc
MAKE_FLAGS+=	VARDIR=/var/log
MAKE_FLAGS+=	SMBLOGFILE=/var/log/smb
MAKE_FLAGS+=	NMBLOGFILE=/var/log/nmb
MAKE_FLAGS+=	CONFIGFILE=$(PREFIX)/etc/smb.conf 
MAKE_FLAGS+=	LMHOSTSFILE=$(PREFIX)/etc/lmhosts
MAKE_FLAGS+=	LOCKDIR=/var/spool/lock 

.include <bsd.port.mk>

.if ${OPSYS} == "FreeBSD"
MAKE_FLAGS+= LIBSM=-lcrypt FLAGSM="-DFreeBSD -DBSD44"
.elif (${OPSYS} == "OpenBSD")
MAKE_FLAGS+= FLAGSM="-DBSD44 -DFAST_SHARE_MODES" LIBSM=
.endif

MAKE_FLAGS+=	-f

