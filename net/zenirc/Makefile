# $OpenBSD: Makefile,v 1.5 2014/10/22 14:02:14 jasper Exp $

COMMENT-main=	IRC client for Emacs
COMMENT-el=	elisp sources of zenirc

VERSION=	2.112
DISTNAME=	zenirc-${VERSION}
REVISION=	1
PKGNAME-main=	emacs-zenirc-${VERSION}
PKGNAME-el=	emacs-zenirc-el-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.zenirc.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.zenirc.org/pub/zenirc/

CONFIGURE_STYLE=gnu old dest

RUN_DEPENDS=	editors/emacs21
BUILD_DEPENDS=	${RUN_DEPENDS}

MULTI_PACKAGES=	-main -el

post-extract:
	@cp ${FILESDIR}/zenirc-chanbuf.el ${WRKSRC}/src/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/lisp/zenirc/
	@cp ${WRKSRC}/src/*.el ${PREFIX}/share/emacs/lisp/zenirc/

NO_TEST=	Yes

.include <bsd.port.mk>
