# OpenBSD makefile for:	samba
# Version required:			1.9.15p8
# Date created:				16 Nov 1997
# Whom:					ejovi

DISTNAME=	samba-1.9.17p2
CATEGORIES=	net
MASTER_SITES=	ftp://samba.anu.edu.au/pub/samba/
WRKSRC=		${WRKDIR}/${DISTNAME}/source

MAINTAINER=	ejovi@OpenBSD.ORG

MAN1=		smbstatus.1 smbclient.1 smbrun.1 smbtar.1 testparm.1 testprns.1
MAN5=		smb.conf.5
MAN7=		samba.7
MAN8=		smbd.8 nmbd.8 smbpasswd.8

pre-install:
	@${MKDIR} /usr/local/samba

.include <bsd.port.mk>
