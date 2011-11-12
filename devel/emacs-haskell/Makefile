# $OpenBSD: Makefile,v 1.1.1.1 2011/11/12 11:49:29 jasper Exp $

COMMENT =		Emacs mode for editing Haskell code

VSN =			2.8.0
DISTNAME =		haskell-mode-${VSN}
PKGNAME =		emacs-haskell-${VSN}

CATEGORIES =		devel editors lang

HOMEPAGE =		http://projects.haskell.org/haskellmode-emacs/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}

NO_BUILD =		Yes
PKG_ARCH =		*
RUN_DEPENDS =		lang/ghc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/haskell-mode/
	${INSTALL_DATA} ${WRKSRC}/*.el \
		${PREFIX}/share/emacs/site-lisp/haskell-mode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/emacs-haskell/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/emacs-haskell/

.include <bsd.port.mk>
