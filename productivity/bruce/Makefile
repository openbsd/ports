COMMENT=		Python-based presentation tool

MODPY_DISTV=	1.2.1
DISTNAME=		bruce-${MODPY_DISTV}
REVISION =		7

CATEGORIES=		productivity

HOMEPAGE=		https://sites.google.com/site/r1chardj0n3s/bruce

# BSD-like
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS=		devel/py2-pygame

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
