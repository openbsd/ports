# $OpenBSD: Makefile,v 1.19 2019/07/12 20:48:57 sthen Exp $

COMMENT=		Python-based presentation tool

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		bruce-${MODPY_EGG_VERSION}
REVISION =		6

CATEGORIES=		productivity

HOMEPAGE=		https://sites.google.com/site/r1chardj0n3s/bruce

# BSD-like
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
RUN_DEPENDS=		devel/pygame

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bruce
	${INSTALL_DATA} ${WRKSRC}/doc/socrates.txt \
		${PREFIX}/share/doc/bruce/socrates.txt
	@sed -e "s|doc/socrates.txt|${LOCALBASE}/share/doc/socrates.txt|" \
		${WRKSRC}/README.txt > ${PREFIX}/share/doc/bruce/README 
	@mv ${PREFIX}/bin/socrates.py ${PREFIX}/bin/socrates
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bruce
	@cd ${WRKSRC}/doc/examples; tar cf - . | \
		tar xf - -C ${PREFIX}/share/examples/bruce

.include <bsd.port.mk>
