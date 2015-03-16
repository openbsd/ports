# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:56 naddy Exp $

COMMENT=	language guessing library

DISTNAME=	libtextcat-2.2
REVISION=	0

SHARED_LIBS +=  textcat              0.0      # .0.0

CATEGORIES=	textproc

HOMEPAGE=	http://software.wise-guys.nl/libtextcat/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://software.wise-guys.nl/download/


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA} ${WRKSRC}/src/textcat.h ${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/share/libtextcat/LM
	${INSTALL_DATA} ${WRKSRC}/langclass/LM/*.lm ${PREFIX}/share/libtextcat/LM/
	${INSTALL_DATA} ${WRKSRC}/langclass/conf.txt ${PREFIX}/share/libtextcat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libtextcat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/libtextcat

do-test:
	cd ${WRKSRC}/langclass/ && \
		for t in `ls ShortTexts/*.txt`; do \
		../src/testtextcat conf.txt < $$t; \
		done

.include <bsd.port.mk>
