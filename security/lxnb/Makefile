# $OpenBSD: Makefile,v 1.15 2004/12/27 13:28:34 alek Exp $

COMMENT=	"NetBus client"

DISTNAME=       linux-netbus-client-v0.4
PKGNAME=	lxnb-0.4
CATEGORIES=	security

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://ns2.crw.se/~tm/projects/lxnb/
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/${PKGNAME}

pre-build:
	rm -f ${WRKSRC}/lxnetbus

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lxnetbus ${PREFIX}/bin/lxnb

.include <bsd.port.mk>
