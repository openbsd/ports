#       $OpenBSD: Makefile,v 1.11 2013/08/06 18:12:00 jasper Exp $

COMMENT=	newLISP is a LISP like, general purpose scripting language

V=		10.5.3
DISTNAME=	newlisp-$V
CATEGORIES=	lang
HOMEPAGE=	http://newlisp.org/
MAINTAINER=	Ted Walther <ted@reactor-core.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses readline

MASTER_SITES=		${HOMEPAGE}/downloads/
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
