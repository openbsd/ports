# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:54 sthen Exp $

COMMENT =		text-based presentation program

DISTNAME =		tpp-1.3.1
REVISION =		12

CATEGORIES =		misc productivity

HOMEPAGE =		http://synflood.at/tpp.html

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://synflood.at/tpp/

MODULES =		lang/ruby
RUN_DEPENDS =		devel/ruby-ncurses,${MODRUBY_FLAVOR} \
			misc/figlet

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpp
	cd ${WRKSRC} && \
		${INSTALL_DATA} DESIGN README THANKS ${PREFIX}/share/doc/tpp
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/tpp.1 ${PREFIX}/man/man1
	${INSTALL_SCRIPT} ${WRKSRC}/tpp.rb ${PREFIX}/bin/tpp
	${MODRUBY_RUBY_ADJ} ${PREFIX}/bin/tpp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpp
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/tpp
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/contrib/tpp-mode.el ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/contrib/tpp.vim ${PREFIX}/share/doc/tpp

.include <bsd.port.mk>
