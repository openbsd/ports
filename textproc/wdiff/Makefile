# $OpenBSD: Makefile,v 1.21 2009/12/23 20:52:56 jasper Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-0.5g
CATEGORIES=	textproc
MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap 

MODULES=		devel/gettext
CONFIGURE_STYLE=gnu dest old
CONFIGURE_ENV=		CFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS=		--without-included-gettext
USE_GMAKE=		Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

.include <bsd.port.mk>
