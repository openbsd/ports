# OpenBSD makefile for:	samba
# Version required:			1.9.18p2
# Date created:				16 Nov 1997
# Whom:					ejovi
#
# $OpenBSD: Makefile,v 1.5 1998/03/14 22:05:22 marc Exp $

DISTNAME=	samba-1.9.18p3
CATEGORIES=	net
MASTER_SITES=	ftp://samba.anu.edu.au/pub/samba/
WRKSRC=		${WRKDIR}/${DISTNAME}/source

MAINTAINER=	joey@OpenBSD.ORG

MAN1=		smbstatus.1 smbclient.1 smbrun.1 smbtar.1 testparm.1 testprns.1
MAN5=		smb.conf.5
MAN7=		samba.7
MAN8=		smbd.8 nmbd.8 smbpasswd.8

MAKE_FLAGS=	BASEDIR=$(PREFIX)
MAKE_FLAGS+=	SBINDIR=$(PREFIX)/sbin
MAKE_FLAGS+=	MANDIR=$(PREFIX)/man
MAKE_FLAGS+=	CONFIGFILE=/etc/smb.conf 
MAKE_FLAGS+=	LMHOSTSFILE=/etc/lmhosts
MAKE_FLAGS+=	SMB_PASSWD_FILE=/etc/smbpasswd
MAKE_FLAGS+=	VARDIR=/var/log
MAKE_FLAGS+=	SMBLOGFILE=/var/log/smb
MAKE_FLAGS+=	NMBLOGFILE=/var/log/nmb
MAKE_FLAGS+=	LOCKDIR=/var/spool/lock 

DOC=		Application_Serving.txt BROWSING.txt BUGS.txt CVS_ACCESS.txt \
		DIAGNOSIS.txt DNIX.txt DOMAIN.txt DOMAIN_CONTROL.txt \
		ENCRYPTION.txt Faxing.txt GOTCHAS.txt HINTS.txt \
		INSTALL.sambatar MIRRORS.txt NT4_PlainPassword.reg \
		NTDOMAIN.txt NetBIOS.txt OS2-Client-HOWTO.txt \
		PRINTER_DRIVER.txt PROJECTS Passwords.txt Printing.txt \
		README.DCEDFS README.jis README.sambatar SCO.txt SMBTAR.notes \
		Speed.txt Support.txt THANKS Tracing.txt UNIX-SMB.txt \
		UNIX_INSTALL.txt Win95.txt Win95_PlainPassword.reg WinNT.txt \
		announce cifsntdomain.txt history samba.lsm security_level.txt \
		wfw_slip.htm faq/sambafaq.txt


HTML=		Samba-Server-FAQ-1.html Samba-Server-FAQ-2.html \
		Samba-Server-FAQ.html Samba-Server-FAQ.sgml \
		Samba-meta-FAQ-1.html Samba-meta-FAQ-2.html \
		Samba-meta-FAQ-3.html Samba-meta-FAQ-4.html \
		Samba-meta-FAQ-5.html Samba-meta-FAQ-6.html \
		Samba-meta-FAQ.html Samba-meta-FAQ.sgml Samba-meta-FAQ.txt \
		sambafaq-1.html sambafaq-2.html sambafaq-3.html \
		sambafaq-4.html sambafaq-5.html sambafaq.html sambafaq.sgml \

post-install:
	@if [ ! -e /etc/smb.conf ]; then \
	    @${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/examples/smb.conf.default \
		/etc/smb.conf; \
	fi
	@${MKDIR} ${PREFIX}/share/doc/samba
	@echo "Installing samba docs in ${PREFIX}/share/doc/samba"
.for doc in ${DOC}
	@${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/docs/${doc} \
		${PREFIX}/share/doc/samba
.endfor
	@${MKDIR} ${PREFIX}/share/doc/html/samba
	@echo "Installing samba FAQ in ${PREFIX}/share/doc/html/samba"
.for html in ${HTML}
	@${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/docs/faq/${html} \
		${PREFIX}/share/doc/html/samba
.endfor

.include <bsd.port.mk>

.if ${OPSYS} == "FreeBSD"
MAKE_FLAGS+= LIBSM=-lcrypt FLAGSM="-DFreeBSD -DBSD44"
.elif (${OPSYS} == "OpenBSD")
MAKE_FLAGS+= FLAGSM="-DBSD44 -DFAST_SHARE_MODES" LIBSM=
.endif

MAKE_FLAGS+=	-f

