# $OpenBSD: Makefile,v 1.13 2001/11/11 21:58:09 pvalchev Exp $

COMMENT=	"gnu curses-based napster client"

VERSION=	1.4.7
DISTNAME=	nap-${VERSION}
CATEGORIES=    	audio
NEED_VERSION=	1.491

HOMEPAGE=	http://theory.stanford.edu/~selinger/nap/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= nap

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap

.include <bsd.port.mk>
