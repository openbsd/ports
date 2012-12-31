#       $OpenBSD: Makefile,v 1.8 2012/12/31 14:57:15 jasper Exp $

COMMENT=	newLISP is a LISP like, general purpose scripting language

V=		10.4.5
DISTNAME=	newlisp-$V
REVISION=	0
CATEGORIES=	lang
HOMEPAGE=	http://newlisp.org/
MAINTAINER=	Ted Walther <ted@reactor-core.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses readline

MASTER_SITES=		${HOMEPAGE}/downloads/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		devel/xdg-utils

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure-alt
CONFIGURE_ARGS +=	--enable-readline

REGRESS_TARGET=		check

WRKBUILD=		${WRKSRC}
SUBST_VARS=		V

pre-configure:
	${SUBST_CMD} ${WRKSRC}/guiserver/newlisp-edit.lsp

.include <bsd.port.mk>
