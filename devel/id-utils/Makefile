# $OpenBSD: Makefile,v 1.19 2000/04/09 14:25:33 espie Exp $

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel
NEED_VERSION=	1.230

MAINTAINER=	ports@OpenBSD.ORG

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

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
GNU_CONFIGURE=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
