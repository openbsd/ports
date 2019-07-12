# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:29 sthen Exp $

COMMENT=	emacs-based mail client

DISTNAME=	mew-6.8
REVISION=	1
CATEGORIES=	mail
HOMEPAGE=	http://www.mew.org/

MAINTAINER=	YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD license
PERMIT_PACKAGE=	Yes

WANTLIB=		c z

MASTER_SITES=		http://www.mew.org/Release/

MODULES=		lang/ruby
MODRUBY_BUILDDEP=	No
MODRUBY_ADJ_FILES=	cmew smew

BUILD_DEPENDS=		emacs->=24:editors/emacs
RUN_DEPENDS=		emacs->=24:editors/emacs \
			security/stunnel \
			databases/ruby-sqlite3,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	elispdir=${PREFIX}/share/emacs/site-lisp \
			etcdir=${PREFIX}/share/emacs/site-lisp/etc \
			infodir=${PREFIX}/info \
			mandir=${PREFIX}/man

NO_TEST=		Yes

MEWDOCFILES=		00*
MEWDOTFILES=		dot.*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mew
	cd ${WRKSRC}; ${INSTALL_DATA} ${MEWDOCFILES} ${PREFIX}/share/doc/mew
	cd ${WRKSRC}; ${INSTALL_DATA} ${MEWDOTFILES} ${PREFIX}/share/doc/mew

.include <bsd.port.mk>
