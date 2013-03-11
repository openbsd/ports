# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:51 espie Exp $

COMMENT=	emacs-based mail client

DISTNAME=	mew-5.2
REVISION=		0
CATEGORIES=	mail
HOMEPAGE=	http://www.mew.org/

MAINTAINER=	Scott Vokes <vokes.s@gmail.com>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c z

MASTER_SITES=		http://www.mew.org/Release/

RUN_DEPENDS=		editors/emacs21
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	elispdir=$(PREFIX)/share/emacs/site-lisp \
			etcdir=$(PREFIX)/share/emacs/site-lisp/etc

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
