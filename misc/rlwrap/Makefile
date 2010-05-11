# $OpenBSD: Makefile,v 1.5 2010/05/11 18:48:54 kili Exp $

COMMENT=		generic readline wrapper for various programs

DISTNAME=		rlwrap-0.37
CATEGORIES=		misc

HOMEPAGE=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

MASTER_SITES=		${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

REGRESS_IS_INTERACTIVE=	Yes

do-regress:
	cd ${WRKSRC} && src/rlwrap perl test/testclient

.include <bsd.port.mk>
