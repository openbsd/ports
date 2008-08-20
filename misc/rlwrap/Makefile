# $OpenBSD: Makefile,v 1.3 2008/08/20 00:07:04 espie Exp $

COMMENT=		generic readline wrapper for various programs

DISTNAME=		rlwrap-0.28
CATEGORIES=		misc
MASTER_SITES=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

HOMEPAGE=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

MAINTAINER=		Deanna Phillips <deanna@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

REGRESS_IS_INTERACTIVE=	yes
REGRESS_DEPENDS=	:${PKGNAME}:misc/rlwrap

do-regress:
	cd ${WRKSRC} && rlwrap perl test/testclient

.include <bsd.port.mk>
