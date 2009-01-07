# $OpenBSD: Makefile,v 1.1.1.1 2009/01/07 11:16:56 sthen Exp $

COMMENT =		enhanced Tk console

DISTNAME =		tkcon-2.4

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

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

NO_BUILD =		Yes
NO_REGRESS =		Yes

DOCDIR =		${PREFIX}/share/doc/tkcon

post-configure:
	@perl -pi -e \
	'$$. == 3 && s!exec wish.*$$!exec wish${MODTK_VERSION} "\$$0" \$${1+"\$$@"}!' \
	${WRKSRC}/tkcon.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkcon.tcl ${PREFIX}/bin/tkcon
	${INSTALL_DATA_DIR} ${DOCDIR}
.for i in README.txt index.html
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}/$i
.endfor
	${INSTALL_DATA_DIR} ${DOCDIR}/docs
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}/docs/

.include <bsd.port.mk>
