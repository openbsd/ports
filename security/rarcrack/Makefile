# $OpenBSD: Makefile,v 1.1.1.1 2008/06/11 21:55:36 laurent Exp $

COMMENT=		rar, 7zip and zip password bruteforcer

DISTNAME=		rarcrack-0.2
CATEGORIES=		security

HOMEPAGE=		http://rarcrack.sourceforge.net/

MAINTAINER=		Laurent Fanis <laurent@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pthread z iconv
LIB_DEPENDS=		xml2::textproc/libxml

RUN_DEPENDS=		::archivers/p7zip \
			::archivers/unrar \
			::archivers/unzip

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rarcrack/}
EXTRACT_SUFX=   	.tar.bz2

MAKE_ENV+=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/rarcrack	${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rarcrack
	${INSTALL_DATA}	${WRKDIST}/README ${PREFIX}/share/doc/rarcrack/

.include <bsd.port.mk>
