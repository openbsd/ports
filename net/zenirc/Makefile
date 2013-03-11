# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:58 espie Exp $

COMMENT-main=	IRC client for Emacs
COMMENT-el=	elisp sources of zenirc

VERSION=	2.112
DISTNAME=	zenirc-${VERSION}
REVISION=		0
PKGNAME-main=	emacs-zenirc-${VERSION}
PKGNAME-el=	emacs-zenirc-el-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.zenirc.org/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

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
