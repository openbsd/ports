# $OpenBSD: Makefile,v 1.12 2002/05/13 08:36:33 jsyn Exp $

COMMENT=		"Samba security scanner"

DISTNAME=       	ADMsmb-v0.2
PKGNAME=        	ADMsmb-0.2
CATEGORIES=		security
NEED_VERSION=		1.528
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
