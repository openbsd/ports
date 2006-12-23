# $OpenBSD: Makefile,v 1.1.1.1 2006/12/23 11:20:42 jasper Exp $

COMMENT=		"Python-based presentation tool"

DISTNAME=		bruce-1.1.1

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
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/bruce/README

.include <bsd.port.mk>
