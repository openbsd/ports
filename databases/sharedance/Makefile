# $OpenBSD: Makefile,v 1.2 2010/04/15 14:58:24 ajacoutot Exp $

COMMENT=	high-performance server that centralizes key/data pairs

DISTNAME=	sharedance-0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases

HOMEPAGE=	http://sharedance.pureftpd.org/project/sharedance

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c event

MASTER_SITES=	http://download.pureftpd.org/pub/sharedance/

CONFIGURE_STYLE=	simple

REGRESS_TARGET= 	check

EXAMPLESDIR=	${PREFIX}/share/examples/sharedance
PHP_SCRIPTS=	session_handler.php sharedance.php \
		test_session.php test_sharedance.php

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sharedance
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sharedance
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for i in ${PHP_SCRIPTS}
	${INSTALL_DATA} ${WRKSRC}/php/${i} ${EXAMPLESDIR}
.endfor

.include <bsd.port.mk>
