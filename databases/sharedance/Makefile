# $OpenBSD: Makefile,v 1.7 2017/11/17 08:07:38 ajacoutot Exp $

COMMENT=	high-performance server that centralizes key/data pairs

DISTNAME=	sharedance-0.6
REVISION=	2

CATEGORIES=	databases

HOMEPAGE=	http://sharedance.pureftpd.org/project/sharedance

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c event

MASTER_SITES=	http://download.pureftpd.org/pub/sharedance/

CONFIGURE_STYLE=	simple

TEST_TARGET= 	check

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
