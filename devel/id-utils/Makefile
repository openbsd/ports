# $OpenBSD: Makefile,v 1.27 2004/08/10 12:42:22 xsa Exp $

COMMENT=	"gid/lid tools for looking up variables in code"

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

MODULES=	devel/gettext

# don't compile emacs mode files now, install what's needed
# and run it at pkg_add time
CONFIGURE_ARGS=--without-emacs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/id-utils
	${INSTALL_DATA} ${WRKSRC}/lisp/id-utils.el ${PREFIX}/lib/id-utils
	${INSTALL_SCRIPT} ${WRKSRC}/lisp/elisp-comp  ${PREFIX}/lib/id-utils
	${INSTALL_SCRIPT} ${FILESDIR}/recompile ${PREFIX}/lib/id-utils

# International files don't want to be built separately
#
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
