#       $OpenBSD: Makefile,v 1.2 2010/10/27 09:36:34 jasper Exp $
# Makefile prepared Sat Feb 13 11:r7:14 PST 2010 by Ted Walther <ted@reactor-core.org>

COMMENT=	newLISP is a LISP like, general purpose scripting language
DISTNAME=	newlisp-10.2.16
CATEGORIES=	lang
REVISION=	0
HOMEPAGE=	http://newlisp.org/
MAINTAINER=	Ted Walther <ted@reactor-core.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses readline

MASTER_SITES=		http://dpkg.reactor-core.org/port/
EXTRACT_SUFX=		.tgz

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure-alt
CONFIGURE_ARGS +=	--enable-readline

REGRESS_TARGET=		check

WRKBUILD=		${WRKSRC}

.include <bsd.port.mk>
