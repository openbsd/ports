# $OpenBSD: Makefile,v 1.20 2003/02/02 04:02:08 pvalchev Exp $

COMMENT=	"gnu curses-based napster client"

VERSION=	1.5.1
DISTNAME=	nap-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	audio

HOMEPAGE=	http://nap.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nap/} \
		http://quasar.mathstat.uottawa.ca/~selinger/nap/ \
		http://theory.stanford.edu/~selinger/nap/
	      	
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap

.include <bsd.port.mk>
