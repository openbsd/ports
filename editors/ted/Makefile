# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:09 kili Exp $


COMMENT=	X11 based RTF editor
V=		2.17
DISTNAME=	ted-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors textproc print
HOMEPAGE=	http://www.nllgg.nl/Ted/
MASTER_SITES=	ftp://ftp.nluug.nl/pub/editors/ted/

DISTFILES=	ted-$V.src.tar.gz
# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xp Xt c m pthread-stubs xcb z

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}/Ted-$V
LIB_DEPENDS=	png.>=2.::graphics/png \
		jpeg.>=62::graphics/jpeg \
		tiff.>=35::graphics/tiff

USE_X11=	Yes
USE_MOTIF=	openmotif
ALL_TARGET=	compile.shared
SHARED_ONLY=	Yes
NO_REGRESS=	Yes

AFMDIR=		${PREFIX}/share/Ted/afm
INDDIR=		${PREFIX}/share/Ted/ind
INFODIR=	${PREFIX}/share/doc/Ted

post-extract:
	cd ${WRKDIST}/tedPackage && tar xf TedBindist.tar

pre-configure:
	cd ${WRKDIST}/tedPackage/Ted && \
	    sed -e 's,/usr/local/afm,${AFMDIR},' \
		-e 's,/usr/local/ind,${INDDIR},' \
		-e 's,/usr/local/info,${INFODIR},' \
		-e 's,/usr/local/Ted/TedDocument-en_US.rtf,${INFODIR}/TedDocument-en_US.rtf,' \
		Ted.ad.sample >Ted
	for d in ${WRKSRC}/Ted ${WRKSRC}/appFrame; do \
    	cd $$d && \
		touch config.h.in && mv -f config.h.in config.h.in.bak && \
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
	${INSTALL_DATA} ${WRKDIST}/tedPackage/Ted/TedDocument-en_US.rtf ${INFODIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/Ted/Ted ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
