# $OpenBSD: Makefile,v 1.6 2002/03/21 20:46:26 espie Exp $


COMMENT=	"X11 based RTF editor"
V=2.10
DISTNAME=	ted-$V
CATEGORIES=	editors textproc print
NEED_VERSION=	1.515
MASTER_SITES=ftp://ftp.nluug.nl/pub/editors/ted/

DISTFILES=	ted-$V.src.tar.gz
# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}/Ted-$V
LIB_DEPENDS=	png.2.::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff

USE_MOTIF=	openmotif
ALL_TARGET=	compile.shared
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

AFMDIR=		${PREFIX}/share/Ted/afm
INDDIR=		${PREFIX}/share/Ted/ind
INFODIR=	${PREFIX}/share/doc/Ted

post-extract:
	cd ${WRKDIST}/tedPackage && tar xf TedBindist.tar

post-patch:
	cd ${WRKDIST}/tedPackage/info && \
	    sed -e 's,/usr/local/afm,${AFMDIR},' \
		-e 's,/usr/local/ind,${INDDIR},' \
		-e 's,/usr/local/info,${INFODIR},' \
		Ted.ad.sample >Ted
	for d in ${WRKSRC}/Ted ${WRKSRC}/appFrame; do \
    	cd $$d && \
		mv -f config.h.in config.h.in.bak && \
		echo '#define PREFIX "${PREFIX}"' >config.h.in && \
		echo '#define INFODIR "${INFODIR}"' >>config.h.in && \
		echo '#define INDDIR "${INDDIR}"' >>config.h.in && \
		echo '#define AFMDIR "${AFMDIR}"' >>config.h.in && \
		cat config.h.in.bak >>config.h.in; \
	done

#CFLAGS+=-DAFMDIR=${AFMDIR} -DINDDIR=${INDDIR} -DINFODIR=${INFODIR}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Ted/Ted ${PREFIX}/bin/Ted
	${INSTALL_DATA_DIR} ${AFMDIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/afm/* ${AFMDIR}
	${INSTALL_DATA_DIR} ${INDDIR}
	${INSTALL_DATA_DIR} ${INFODIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/info/TedDocument.rtf ${INFODIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/info/Ted ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
