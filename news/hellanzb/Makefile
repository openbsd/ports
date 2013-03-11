# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:58 espie Exp $

COMMENT=		retrieve and process nzb-files

DISTNAME=		hellanzb-0.13
REVISION =		8
CATEGORIES=		news

HOMEPAGE=		http://www.hellanzb.com/trac/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.hellanzb.com/distfiles/

MODULES=		lang/python

RUN_DEPENDS=		archivers/par2cmdline \
			archivers/unrar \
			devel/py-twisted/core \
			devel/py-twisted/web \
			news/py-yenc

MODPY_ADJ_FILES=	hellanzb.py

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Hellanzb/Core.py

.include <bsd.port.mk>
