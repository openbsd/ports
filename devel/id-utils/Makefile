# $OpenBSD: Makefile,v 1.21 2001/05/06 00:13:03 lebel Exp $

COMMENT=	"gid/lid tools for looking up variables in code"

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel
NEED_VERSION=	1.402

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

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
USE_GMAKE=	Yes

.include <bsd.port.mk>
