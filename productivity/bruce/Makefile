# $OpenBSD: Makefile,v 1.16 2015/04/02 19:38:21 jasper Exp $

COMMENT=		Python-based presentation tool

MODPY_EGG_VERSION=	1.2.1
DISTNAME=		bruce-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES=		productivity

HOMEPAGE=		https://sites.google.com/site/r1chardj0n3s/bruce

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

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
