# $OpenBSD: Makefile,v 1.4 2010/04/02 08:15:21 jasper Exp $

COMMENT=		generic readline wrapper for various programs

DISTNAME=		rlwrap-0.36
CATEGORIES=		misc
MASTER_SITES=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

HOMEPAGE=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

MAINTAINER=		Deanna Phillips <deanna@openbsd.org>

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
