# $OpenBSD: Makefile,v 1.4 2001/03/02 02:12:50 naddy Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/06/05 12:01:24 rh Exp $

DISTNAME=	vlnx407e
PKGNAME=	uvscan-4.07e
CATEGORIES=	security
NEED_VERSION=	1.302

HOMEPAGE=	http://www.nai.com/asp_set/buy_try/try/products_evals.asp

MASTER_SITES=	http://download.mcafee.com/products/evaluation/virusscan/english/unix/linux/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

RUN_DEPENDS=	/emul/linux/lib/libc.so.6::emulators/redhat_base \
		${PREFIX}/libexec/uvscan/scan.dat::security/uvscan_dat

ONLY_FOR_ARCHS=	i386
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-configure:
	sed -e 's:@@PREFIX@@:${PREFIX}:g' \
		<${FILESDIR}/uvscan.sh >${WRKDIR}/uvscan.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan.sh ${PREFIX}/bin/uvscan
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/uvscan
	${INSTALL_SCRIPT} ${WRKSRC}/uvscan ${PREFIX}/libexec/uvscan
.for file in license.dat messages.dat
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/libexec/uvscan
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/uvscan
.for file in unx47uag.pdf license.txt
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/uvscan
.endfor

.include <bsd.port.mk>
