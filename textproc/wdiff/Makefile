# $OpenBSD: Makefile,v 1.19 2007/11/24 14:46:29 simon Exp $

COMMENT=	word differences between text files

DISTNAME=	wdiff-0.5g
CATEGORIES=	textproc
MASTER_SITES=	http://wdiff.progiciels-bpi.ca/archives/

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
FAKE_FLAGS=		DESTDIR=${WRKINST} \
			PREFIX=${PREFIX}

.include <bsd.port.mk>
