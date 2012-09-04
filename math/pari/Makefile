# $OpenBSD: Makefile,v 1.11 2012/09/04 03:40:33 jeremy Exp $

COMMENT=	number theory-oriented computer algebra system

DISTNAME=	pari-2.1.6
REVISION=	2
EXTRACT_SUFX=	.tgz
CATEGORIES=	math

HOMEPAGE=	http://pari.math.u-bordeaux.fr/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m ncurses readline

MASTER_SITES=		${HOMEPAGE}/pub/pari/unix/

BUILD_DEPENDS=		print/texlive/base

USE_GROFF =		Yes

CONFIGURE_SCRIPT=	Configure
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CFLAGS="${CFLAGS}"
CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/pari \
			--miscdir=${PREFIX}/share/pari \
			--prefix=${PREFIX} \
			--host=${ARCH}

REGRESS_TARGET=		dobench

post-install:
	mv ${PREFIX}/share/pari/doc ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/[A-Z]* ${PREFIX}/share/doc/pari
	mv ${PREFIX}/share/pari/examples ${PREFIX}/share/examples/pari

.include <bsd.port.mk>
