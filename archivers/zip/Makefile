# $OpenBSD: Makefile,v 1.29 2002/12/29 15:15:18 fgsch Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

COMMENT=	"create/update ZIP files compatible with PKZip(tm)"

DISTNAME=	zip23
PKGNAME=	zip-2.3
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.uu.net/pub/archiving/zip/src/ \
		ftp://ftp.icce.rug.nl/infozip/src/

DISTFILES=	zip23.tar.gz zcrypt29.zip

HOMEPAGE=	http://www.ctan.org/tex-archive/tools/zip/info-zip/Zip.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -DUNIX"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	generic

WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	README WHERE

post-extract:
	@mv -f ${WRKDIR}/{crypt.c,crypt.h} ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/zip

NO_REGRESS=	Yes

.include <bsd.port.mk>
