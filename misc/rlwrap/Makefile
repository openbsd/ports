# $OpenBSD: Makefile,v 1.7 2010/11/19 07:23:12 espie Exp $

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

USE_GROFF =		Yes
REGRESS_IS_INTERACTIVE=	Yes

do-regress:
	cd ${WRKSRC} && src/rlwrap perl test/testclient

.include <bsd.port.mk>
