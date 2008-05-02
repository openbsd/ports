# $OpenBSD: Makefile,v 1.1.1.1 2008/05/02 06:43:46 steven Exp $

COMMENT=	learn Tcl interactively

DISTNAME=	tcltutor-30b1
CATEGORIES=	lang lang/tcl
DISTFILES=	tcltutor30b1.tgz

HOMEPAGE=	http://www.msen.com/~clif/TclTutor.html
MASTER_SITES=	http://www.msen.com/~clif/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tk->=8.5:x11/tk/8.5

WRKDIST=	${WRKDIR}/TclTutor

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes

TT_LIB_DIR=	${PREFIX}/lib/tcltutor
TT_LSN_DIR=	${PREFIX}/share/doc/tcltutor

do-configure:
	awk '{ gsub(/!!TT_LIB_DIR!!/,"${TT_LIB_DIR}") \
	   } { gsub(/!!TT_LSN_DIR!!/,"${TT_LSN_DIR}") \
	   } { print }' \
	< ${WRKSRC}/TclTutor.tcl > ${WRKSRC}/TclTutor.tcl._tmp && \
	mv ${WRKSRC}/TclTutor.tcl._tmp ${WRKSRC}/TclTutor.tcl
	
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/TclTutor.tcl ${PREFIX}/bin/tcltutor
	${INSTALL_DATA_DIR} ${TT_LIB_DIR}
	for i in NOTICE README balloon.tcl htmllib.tcl images.tcl \
			options.tcl simpleTop.tcl ; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${TT_LIB_DIR} ; \
	done
	${INSTALL_DATA_DIR} ${TT_LSN_DIR}
	for i in Tcl_English Tcl_Portuguese ; do \
		${INSTALL_DATA_DIR} ${TT_LSN_DIR}/$$i; \
		for j in lsn cfg html ; do \
			${INSTALL_DATA} ${WRKSRC}/lesson/$$i/*.$$j ${TT_LSN_DIR}/$$i ; \
		done ; \
	done

.include <bsd.port.mk>
