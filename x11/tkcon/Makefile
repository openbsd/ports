# $OpenBSD: Makefile,v 1.10 2014/02/09 12:26:00 stu Exp $

COMMENT =		enhanced Tk console

DISTNAME =		tkcon-2.5
REVISION =		3
CATEGORIES =		x11 x11/tk
HOMEPAGE =		http://sourceforge.net/projects/tkcon/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/tk
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tkcon/}
BUILD_DEPENDS =		devel/tcllib>=1.11.1
RUN_DEPENDS =		${MODTK_RUN_DEPENDS}
USE_GROFF =		Yes
NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

DOCDIR =		${PREFIX}/share/doc/tkcon
MODDIR =		${DESTDIR}${MODTCL_MODDIR}/${MODTCL_VERSION}

# Conflicts with observe.n in Tcllib
BADMAN =		${WRKSRC}/docs/observe.n.man

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkcon.tcl
	sed -e 's!manpage_begin observe!manpage_begin tkcon_observe!' \
		< ${BADMAN} > ${WRKSRC}/docs/tkcon_observe.n.man \
	&& mv ${BADMAN} ${BADMAN}.orig

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkcon.tcl ${PREFIX}/bin/tkcon
	# Enable loading as a 'Tcl Module' via [package require]
	${INSTALL_DATA_DIR} ${MODDIR}
	ln -sf ${TRUEPREFIX}/bin/tkcon ${MODDIR}/tkcon-2.5.tm
	${INSTALL_DATA_DIR} ${DOCDIR}
.for i in README.txt index.html
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}/$i
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}/docs
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}/docs/
	rm -f ${DOCDIR}/docs/*.man ${DOCDIR}/docs/*.orig
.for s in 1 5 n
	for i in ${WRKSRC}/docs/*.$s.man ; do \
		ofn=`basename $$i | sed -e 's/\..*$$/.$s/'` ; \
		dtplite -o ${PREFIX}/man/man$s/$$ofn nroff $$i ; \
	done
.endfor

.include <bsd.port.mk>
