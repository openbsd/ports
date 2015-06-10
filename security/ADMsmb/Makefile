# $OpenBSD: Makefile,v 1.21 2015/06/10 11:05:02 jca Exp $

COMMENT=		Samba security scanner

DISTNAME=       	ADMsmb-v0.2
PKGNAME=		ADMsmb-0.2
REVISION =		3
CATEGORIES=		security
EXTRACT_SUFX=		.tgz

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c

MASTER_SITES=   	ftp://adm.freelsd.net/pub/ADM/ \
                	http://adm.freelsd.net/ADM/ \
			${MASTER_SITE_PACKETSTORM:=groups/ADM/}

WRKDIST=	${WRKDIR}/ADM-SAMBA-CLIENT
MAKE_ENV=	CFLAGS0="${CFLAGS}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADM-smb ${PREFIX}/bin/ADMsmb

.include <bsd.port.mk>
