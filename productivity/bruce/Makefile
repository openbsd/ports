# $OpenBSD: Makefile,v 1.2 2007/01/02 21:40:52 robert Exp $

COMMENT=		"Python-based presentation tool"

DISTNAME=		bruce-1.2

CATEGORIES=		productivity python

HOMEPAGE=		http://bruce.python-hosting.com/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/b/bruce/

MODULES=		lang/python
RUN_DEPENDS=		::devel/pygame

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bruce
	${INSTALL_DATA} ${WRKSRC}/doc/socrates.txt \
			${PREFIX}/share/doc/bruce/socrates.txt
	@sed -e "s|doc/socrates.txt|${LOCALBASE}/share/doc/socrates.txt|" \
			${WRKSRC}/README.txt > ${PREFIX}/share/doc/bruce/README 
	@mv ${PREFIX}/bin/socrates.py ${PREFIX}/bin/socrates

.include <bsd.port.mk>
