# $OpenBSD: Makefile,v 1.26 2004/06/21 04:40:30 david Exp $
# $NetBSD: Makefile,v 1.2 2000/06/19 14:30:02 rh Exp $

COMMENT=	"AntiVirus DAT file for uvscan"

VERSION=	4367
DISTNAME=	dat-${VERSION}
PKGNAME=	uvscan_${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	http://www.networkassociates.com/us/downloads/updates/

EXTRACT_SUFX=	.tar
SUBST_VARS+=	VERSION

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

ONLY_FOR_ARCHS=	i386
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

FETCH_MANUALLY = " You must fetch the distfile for this port manually"
FETCH_MANUALLY+= " after agreeing to the license agreement at"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "     http://www.networkassociates.com/us/downloads/updates/dat.asp?ID=1"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= " Choose the 'Weekly v4.x (DAT only)' option and place"
FETCH_MANUALLY+= " ${DISTFILES} into ${FULLDISTDIR}."
FETCH_MANUALLY+= ""

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
