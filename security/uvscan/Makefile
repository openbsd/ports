# $OpenBSD: Makefile,v 1.7 2001/09/16 17:02:02 naddy Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/06/05 12:01:24 rh Exp $

COMMENT=	evaluation version of a DOS/Windows file virus scanner

VERSION=	4.14.0
DISTNAME=	vlnx414e
PKGNAME=	uvscan-${VERSION}
CATEGORIES=	security
NEED_VERSION=	1.363

HOMEPAGE=	http://www.nai.com/asp_set/buy_try/try/products_evals.asp

MASTER_SITES=	http://download.nai.com/products/evaluation/virusscan/english/unix/linux/v${VERSION}/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

RUN_DEPENDS=	/emul/linux/lib/libc.so.6::emulators/redhat/base \
		${PREFIX}/libexec/uvscan/scan.dat::security/uvscan_dat

ONLY_FOR_ARCHS=	i386
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-configure:
	sed -e 's:@@PREFIX@@:${PREFIX}:g' \
		<${FILESDIR}/uvscan.sh >${WRKDIR}/uvscan.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan.sh ${PREFIX}/bin/uvscan
	${INSTALL_MAN} ${WRKSRC}/uvscan.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/uvscan
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan ${PREFIX}/libexec/uvscan
	${INSTALL_SCRIPT} ${WRKSRC}/liblnxfv.so ${PREFIX}/libexec/uvscan
.for file in clean.dat license.dat messages.dat names.dat
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/libexec/uvscan
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uvscan
.for file in unxadmin.pdf license.txt readme.txt reseller.txt
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/uvscan
.endfor

.include <bsd.port.mk>
