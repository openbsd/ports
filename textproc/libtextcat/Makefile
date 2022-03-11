COMMENT=	language guessing library

DISTNAME=	libtextcat-2.2
REVISION=	1

SHARED_LIBS +=  textcat              0.0      # .0.0

CATEGORIES=	textproc

HOMEPAGE=	http://software.wise-guys.nl/libtextcat/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	http://software.wise-guys.nl/download/


CONFIGURE_STYLE= gnu

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
