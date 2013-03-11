# $OpenBSD: Makefile,v 1.13 2013/03/11 11:37:54 espie Exp $

COMMENT=		Python-based presentation tool

DISTNAME=		bruce-1.2.1
REVISION =		3

CATEGORIES=		productivity

HOMEPAGE=		http://bruce.python-hosting.com/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=b/bruce/}

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
