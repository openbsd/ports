# $OpenBSD: Makefile,v 1.15 2004/06/21 04:40:30 david Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/06/05 12:01:24 rh Exp $

COMMENT=	"evaluation version of a DOS/Windows file virus scanner"

VERSION=	4.32
DISTNAME=	vlnx432e
PKGNAME=	uvscan-${VERSION}
CATEGORIES=	security

HOMEPAGE=	http://www.networkassociates.com/us/downloads/evals/

EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

RUN_DEPENDS=	:redhat_base-*:emulators/redhat/base \
		:uvscan_dat-*:security/uvscan_dat

ONLY_FOR_ARCHS=	i386
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

FETCH_MANUALLY = " You must fetch the distfile for this port manually"
FETCH_MANUALLY+= " after agreeing to the license agreement at"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "     http://www.networkassociates.com/us/downloads/evals/"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= " Choose the 'McAfee VirusScan Command Line Scanner for Linux'"
FETCH_MANUALLY+= " option and place ${DISTFILES} into ${FULLDISTDIR}."
FETCH_MANUALLY+= ""

do-configure:
	sed -e 's:@@PREFIX@@:${PREFIX}:g' \
		<${FILESDIR}/uvscan.sh >${WRKDIR}/uvscan.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan.sh ${PREFIX}/bin/uvscan
	${INSTALL_MAN} ${WRKSRC}/uvscan.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/uvscan
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan ${PREFIX}/libexec/uvscan
	${INSTALL_SCRIPT} ${WRKSRC}/liblnxfv.so.4 ${PREFIX}/libexec/uvscan
	ln -s liblnxfv.so.4 ${PREFIX}/libexec/uvscan/liblnxfv.so
.for file in clean.dat license.dat messages.dat names.dat
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/libexec/uvscan
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uvscan
.for file in license.txt readme.txt
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/uvscan
.endfor

.include <bsd.port.mk>
