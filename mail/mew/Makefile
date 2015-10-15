# $OpenBSD: Makefile,v 1.12 2015/10/15 14:06:16 yasuoka Exp $

COMMENT=	emacs-based mail client

DISTNAME=	mew-6.7
CATEGORIES=	mail
HOMEPAGE=	http://www.mew.org/
REVISION=	0

MAINTAINER=	YASUOKA Masahiko <yasuoka@yasuoka.net>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes

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
