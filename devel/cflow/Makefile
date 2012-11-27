# $OpenBSD: Makefile,v 1.6 2012/11/27 19:00:00 gonzalo Exp $

COMMENT =	analyze C source files and print a call graph

DISTNAME =	cflow-1.4
CATEGORIES =	devel

HOMEPAGE =	http://www.gnu.org/software/cflow/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=cflow/}

MODULES =		devel/gettext

MAKE_FLAGS =		LIBINTL="-L${LOCALBASE}/lib -liconv -lintl"

USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/elisp/cflow-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
