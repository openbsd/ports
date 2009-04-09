# $OpenBSD: Makefile,v 1.2 2009/04/09 11:38:29 jasper Exp $

COMMENT =		visual programming environment and toolkit

DISTNAME =		scratch-1.3
CATEGORIES =		graphics
HOMEPAGE =		http://scratch.mit.edu/
MASTER_SITES =		${HOMEPAGE:=files/}
DISTFILES =		WinScratch1.3.zip

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS=		::archivers/unzip
RUN_DEPENDS =		:squeak-vm-*:lang/squeak/vm

EXTRACT_ONLY =
NO_BUILD =		Yes
NO_REGRESS =		Yes

SCRATCH_LIB_DIR =	${PREFIX}/lib/scratch
SCRATCH_SHARE_DIR =	${PREFIX}/share/scratch
SCRATCH_SUBDIR =	WinScratch1.3/Scratch\ 1.3

do-install:
	${INSTALL_DATA_DIR} ${SCRATCH_LIB_DIR}
	${INSTALL_DATA_DIR} ${SCRATCH_SHARE_DIR}
	unzip -oq ${DISTDIR}/${DISTFILES} \
	    -x ${SCRATCH_SUBDIR}/*.dll ${SCRATCH_SUBDIR}/Scratch.exe \
	    -d ${SCRATCH_SHARE_DIR}
	gzip < ${SCRATCH_SHARE_DIR}/${SCRATCH_SUBDIR}/Scratch.image > \
	    ${SCRATCH_LIB_DIR}/Scratch.image.gz
	chmod 444 ${SCRATCH_LIB_DIR}/Scratch.image.gz
	rm -f ${SCRATCH_SHARE_DIR}/${SCRATCH_SUBDIR}/Scratch.image
	mv ${SCRATCH_SHARE_DIR}/${SCRATCH_SUBDIR}/* ${SCRATCH_SHARE_DIR}
	rm -rf ${SCRATCH_SHARE_DIR}/${SCRATCH_SUBDIR:H}
	find ${SCRATCH_SHARE_DIR} -type d -exec chmod 755 {} ';'
	find ${SCRATCH_SHARE_DIR} -type f -exec chmod 444 {} ';'
.for i in Help locale Scratch.ini license.txt
	mv ${SCRATCH_SHARE_DIR}/$i ${SCRATCH_LIB_DIR}/$i
.endfor
	${SUBST_CMD} -c ${FILESDIR}/iniscratch ${SCRATCH_SHARE_DIR}/iniscratch
	chown ${SHAREOWN}:${SHAREGRP} ${SCRATCH_SHARE_DIR}/iniscratch
	${INSTALL_SCRIPT} ${FILESDIR}/scratch ${PREFIX}/bin

.include <bsd.port.mk>
