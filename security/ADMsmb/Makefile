# $OpenBSD: Makefile,v 1.13 2002/12/29 20:31:39 fgsch Exp $

COMMENT=		"Samba security scanner"

DISTNAME=       	ADMsmb-v0.2
PKGNAME=        	ADMsmb-0.2
CATEGORIES=		security
EXTRACT_SUFX=		.tgz

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=   	ftp://adm.freelsd.net/pub/ADM/ \
                	http://adm.freelsd.net/ADM/ \
			${MASTER_SITE_PACKETSTORM:=groups/ADM/}

WRKDIST=	${WRKDIR}/ADM-SAMBA-CLIENT

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADM-smb ${PREFIX}/bin/ADMsmb

.include <bsd.port.mk>
