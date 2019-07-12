# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:06 sthen Exp $


COMMENT =	X11 based RTF editor
V =		2.17
DISTNAME =	ted-$V
REVISION =	6
CATEGORIES =	editors textproc print
HOMEPAGE =	http://www.nllgg.nl/Ted/
MASTER_SITES =	ftp://ftp.nluug.nl/pub/editors/ted/

DISTFILES =	ted-$V.src.tar.gz
# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xmu Xpm Xt c m xcb z
WANTLIB += png jpeg tiff Xm

MAINTAINER =	Marc Espie <espie@openbsd.org>

WRKDIST =	${WRKDIR}/Ted-$V
LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/tiff \
		x11/motif
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'  CC='${CC}'

ALL_TARGET =	compile.shared
NO_TEST =	Yes

AFMDIR =	${PREFIX}/share/Ted/afm
INDDIR =	${PREFIX}/share/Ted/ind
INFODIR =	${PREFIX}/share/doc/Ted

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

#CFLAGS += -DAFMDIR=${AFMDIR} -DINDDIR=${INDDIR} -DINFODIR=${INFODIR}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Ted/Ted ${PREFIX}/bin/Ted
	${INSTALL_DATA_DIR} ${AFMDIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/afm/* ${AFMDIR}
	${INSTALL_DATA_DIR} ${INDDIR}
	${INSTALL_DATA_DIR} ${INFODIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/Ted/TedDocument-en_US.rtf ${INFODIR}
	${INSTALL_DATA} ${WRKDIST}/tedPackage/Ted/Ted ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>
