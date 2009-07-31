# $OpenBSD: Makefile,v 1.1.1.1 2009/07/31 15:42:58 ajacoutot Exp $

COMMENT=	language guessing library

DISTNAME=	libtextcat-2.2

SHARED_LIBS +=  textcat              0.0      # .0.0

CATEGORIES=	textproc

HOMEPAGE=	http://software.wise-guys.nl/libtextcat/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	http://software.wise-guys.nl/download/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/textcat.h ${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/share/libtextcat/LM
	${INSTALL_DATA} ${WRKSRC}/langclass/LM/*.lm ${PREFIX}/share/libtextcat/LM/
	${INSTALL_DATA} ${WRKSRC}/langclass/conf.txt ${PREFIX}/share/libtextcat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libtextcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libtextcat

do-regress:
	cd ${WRKSRC}/langclass/ && \
		for t in `ls ShortTexts/*.txt`; do \
		../src/testtextcat conf.txt < $$t; \
		done

.include <bsd.port.mk>
