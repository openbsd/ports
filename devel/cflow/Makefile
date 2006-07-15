# $OpenBSD: Makefile,v 1.1.1.1 2006/07/15 19:33:08 steven Exp $

COMMENT=	"analyze C source files and print a call graph"

DISTNAME=	cflow-1.1
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/cflow/

MAINTAINER=	Louis Bertrand <louis@bertrandtech.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=cflow/}

WANTLIB=	c

MODULES=	devel/gettext

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -liconv -lintl"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/elisp/cflow-mode.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
