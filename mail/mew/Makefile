# $OpenBSD: Makefile,v 1.5 2011/09/16 10:31:21 espie Exp $

COMMENT=	emacs-based mail client

DISTNAME=	mew-5.2
REVISION=		0
CATEGORIES=	mail
HOMEPAGE=	http://www.mew.org/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=		http://www.mew.org/Release/

RUN_DEPENDS=		editors/emacs21
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	elispdir=$(PREFIX)/share/emacs/site-lisp \
			etcdir=$(PREFIX)/share/emacs/site-lisp/etc

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
