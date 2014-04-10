#       $OpenBSD: Makefile,v 1.13 2014/04/10 20:20:16 bcallah Exp $

COMMENT=	newLISP is a LISP like, general purpose scripting language

V=		10.6.0
DISTNAME=	newlisp-$V
CATEGORIES=	lang
HOMEPAGE=	http://newlisp.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses readline

MASTER_SITES=		http://newlisp.org/downloads/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		devel/xdg-utils

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure-alt
CONFIGURE_ARGS +=	--enable-readline

TEST_TARGET=		check

WRKBUILD=		${WRKSRC}
SUBST_VARS=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/guiserver/newlisp-edit.lsp

.include <bsd.port.mk>
