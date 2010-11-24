# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:15 jeremy Exp $

COMMENT =		text-based presentation program

DISTNAME =		tpp-1.3.1
REVISION =		1

CATEGORIES =		misc productivity

HOMEPAGE =		http://synflood.at/tpp.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://synflood.at/tpp/

MODULES =		lang/ruby
RUN_DEPENDS =		devel/ruby-ncurses \
			misc/figlet

NO_BUILD =		Yes
USE_GROFF =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpp
	cd ${WRKSRC} && \
		${INSTALL_DATA} DESIGN README THANKS ${PREFIX}/share/doc/tpp
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/tpp.1 ${PREFIX}/man/man1
	${INSTALL_SCRIPT} ${WRKSRC}/tpp.rb ${PREFIX}/bin/tpp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpp
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/tpp
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/contrib/tpp-mode.el ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/contrib/tpp.vim ${PREFIX}/share/doc/tpp

.include <bsd.port.mk>
