#       $OpenBSD: Makefile,v 1.3 2011/07/27 18:17:27 todd Exp $
# Makefile prepared Sat Feb 13 11:r7:14 PST 2010 by Ted Walther <ted@reactor-core.org>

COMMENT=	newLISP is a LISP like, general purpose scripting language
V=		10.3.2
DISTNAME=	newlisp-$V
CATEGORIES=	lang
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
SUBST_VARS=		V

.include <bsd.port.mk>
