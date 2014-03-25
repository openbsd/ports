# $OpenBSD: Makefile,v 1.8 2014/03/25 21:20:39 espie Exp $

COMMENT=		rar, 7zip and zip password bruteforcer

DISTNAME=		rarcrack-0.2
REVISION =		3
CATEGORIES=		security

HOMEPAGE=		http://rarcrack.sourceforge.net/

MAINTAINER=		Laurent Fanis <laurent.fanis@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread z xml2

MODULES=		converters/libiconv

LIB_DEPENDS=		textproc/libxml

RUN_DEPENDS=		archivers/p7zip \
			archivers/unrar \
			archivers/unzip

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rarcrack/}
EXTRACT_SUFX=   	.tar.bz2

MAKE_ENV+=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/rarcrack	${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rarcrack
	${INSTALL_DATA}	${WRKDIST}/README ${PREFIX}/share/doc/rarcrack/

.include <bsd.port.mk>
