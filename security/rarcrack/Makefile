COMMENT=		rar, 7zip and zip password bruteforcer

DISTNAME=		rarcrack-0.2
REVISION =		7
CATEGORIES=		security

HOMEPAGE=		https://rarcrack.sourceforge.net/

MAINTAINER=		Laurent Fanis <laurent.fanis@gmail.com>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+= c iconv lzma m pthread xml2 z

LIB_DEPENDS=		converters/libiconv \
			textproc/libxml

RUN_DEPENDS=		archivers/p7zip \
			archivers/unrar \
			archivers/unzip

SITES=			${SITE_SOURCEFORGE:=rarcrack/}
EXTRACT_SUFX=   	.tar.bz2

MAKE_ENV+=		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/rarcrack	${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rarcrack
	${INSTALL_DATA}	${WRKDIST}/README ${PREFIX}/share/doc/rarcrack/

.include <bsd.port.mk>
