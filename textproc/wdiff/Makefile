# $OpenBSD: Makefile,v 1.23 2010/10/19 07:54:26 espie Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-0.5g
CATEGORIES=	textproc
MASTER_SITES=	http://distfiles.nl/

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
USE_GROFF =	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

.include <bsd.port.mk>
