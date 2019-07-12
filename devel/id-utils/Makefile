# $OpenBSD: Makefile,v 1.38 2019/07/12 20:44:35 sthen Exp $

COMMENT=	gid/lid tools for looking up variables in code

DISTNAME=	id-utils-3.2d
REVISION =	4
CATEGORIES=	devel

# License: GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c iconv intl

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

# don't compile emacs mode files now, install what's needed
# and run it at pkg_add time
CONFIGURE_ARGS=--without-emacs
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/id-utils
	${INSTALL_DATA} ${WRKSRC}/lisp/id-utils.el ${PREFIX}/lib/id-utils
	${INSTALL_SCRIPT} ${WRKSRC}/lisp/elisp-comp  ${PREFIX}/lib/id-utils
	${INSTALL_SCRIPT} ${FILESDIR}/recompile ${PREFIX}/lib/id-utils

# International files don't want to be built separately
#
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
