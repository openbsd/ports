# $OpenBSD: Makefile,v 1.18 2002/05/13 18:50:36 espie Exp $

COMMENT=	"gnu curses-based napster client"

VERSION=	1.5.0
DISTNAME=	nap-${VERSION}
CATEGORIES=    	audio
NEED_VERSION=	1.504

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
