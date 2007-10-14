# $OpenBSD: Makefile,v 1.1.1.1 2007/10/14 09:28:12 aanriot Exp $

COMMENT-main=	IRC client for Emacs
COMMENT-el=	elisp sources of zenirc

VERSION=	2.112
DISTNAME=	zenirc-${VERSION}
PKGNAME-main=	emacs-zenirc-${VERSION}
PKGNAME-el=	emacs-zenirc-el-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.zenirc.org/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.zenirc.org/pub/zenirc/

CONFIGURE_STYLE=gnu old dest

RUN_DEPENDS=	::editors/emacs21
BUILD_DEPENDS=	${RUN_DEPENDS}

MULTI_PACKAGES=	-main -el

post-extract:
	@cp ${FILESDIR}/zenirc-chanbuf.el ${WRKSRC}/src/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/lisp/zenirc/
	@cp ${WRKSRC}/src/*.el ${PREFIX}/share/emacs/lisp/zenirc/

NO_REGRESS=	Yes

.include <bsd.port.mk>
