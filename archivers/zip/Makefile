# $OpenBSD: Makefile,v 1.35 2006/12/03 08:51:34 matthieu Exp $

COMMENT=	"create/update ZIP files compatible with PKZip(tm)"

DISTNAME=	zip-2.32
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=tools/zip/info-zip/src/} \
		ftp://ftp.info-zip.org/pub/infozip/src/ \
		${MASTER_SITE_SOURCEFORGE:=infozip/} \
		http://mirror.switch.ch/ftp/mirror/infozip/src/		

DISTFILES=	zip232.tar.gz zcrypt29.zip

HOMEPAGE=	http://www.ctan.org/tex-archive/tools/zip/info-zip/Zip.html

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" CFLAGS_NOOPT="${CFLAGS} -I. -DUNIX"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	generic

post-extract:
	@mv -f ${WRKDIR}/crypt.[ch] ${WRKSRC}

NO_REGRESS=	Yes

.include <bsd.port.mk>
