# $OpenBSD: Makefile,v 1.3 2009/04/24 16:29:55 sthen Exp $

COMMENT =		enhanced Tk console

DISTNAME =		tkcon-2.5
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://sourceforge.net/projects/tkcon/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		x11/tk
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkcon/}
BUILD_DEPENDS =		:tcllib->=1.11.1:devel/tcllib
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
NO_BUILD =		Yes
NO_REGRESS =		Yes

DOCDIR =		${PREFIX}/share/doc/tkcon
TCL_MODULES_DIR =	${PREFIX}/lib/tcl8/${MODTCL_VERSION}

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkcon.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkcon.tcl ${PREFIX}/bin/tkcon
	# Enable loading as a 'Tcl Module' via [package require]
	${INSTALL_DATA_DIR} ${TCL_MODULES_DIR}
	ln -sf ${TRUEPREFIX}/bin/tkcon ${TCL_MODULES_DIR}/tkcon-2.5.tm
	${INSTALL_DATA_DIR} ${DOCDIR}
.for i in README.txt index.html
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}/$i
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}/docs
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}/docs/
	rm -f ${DOCDIR}/docs/*.man
.for s in 1 5 n
	for i in ${WRKSRC}/docs/*.$s.man ; do \
		ofn=`basename $$i | sed -e 's/\..*$$/.$s/'` ; \
		dtplite -o ${PREFIX}/man/man$s/$$ofn nroff $$i ; \
	done
.endfor

.include <bsd.port.mk>
