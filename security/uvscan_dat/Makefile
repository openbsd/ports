# $OpenBSD: Makefile,v 1.19 2002/10/28 17:35:02 naddy Exp $
# $NetBSD: Makefile,v 1.2 2000/06/19 14:30:02 rh Exp $

COMMENT=	AntiVirus DAT file for uvscan

VERSION=	4210
DISTNAME=	dat-${VERSION}
PKGNAME=	uvscan_${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	http://www.nai.com/asp_set/download/dats/mcafee_4x.asp

MASTER_SITES=	http://download.nai.com/products/datfiles/4.x/nai/
EXTRACT_SUFX=	.tar
SUBST_VARS+=	VERSION

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

ONLY_FOR_ARCHS=	i386
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

do-configure:
	sed -e 's:@PREFIX@:${PREFIX}:g' \
		<${FILESDIR}/uvscan_update >${WRKDIR}/uvscan_update

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/uvscan
.for file in clean.dat internet.dat names.dat scan.dat
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/libexec/uvscan
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uvscan
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/uvscan/readme-dat-${VERSION}.txt
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan_update ${PREFIX}/sbin

.include <bsd.port.mk>
