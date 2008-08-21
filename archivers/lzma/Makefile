# $OpenBSD: Makefile,v 1.8 2008/08/21 17:50:47 steven Exp $

COMMENT=		LZMA utils - make usage of LZMA compression easy

DISTNAME=		lzma-4.32.7
SHARED_LIBS +=	lzmadec              0.0      # .0.0
CATEGORIES=		archivers

HOMEPAGE=		http://tukaani.org/lzma/

MAINTAINER=		Steven Mestdagh <steven@openbsd.org>

# GPL + LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c m stdc++

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

post-extract:
	@cp ${FILESDIR}/tests.sh ${WRKBUILD}

do-regress:
	@cd ${WRKBUILD} && ${SH} tests.sh

.include <bsd.port.mk>
