# $OpenBSD: Makefile,v 1.10 2011/06/08 17:37:36 jasper Exp $

COMMENT=		retrieve and process nzb-files

DISTNAME=		hellanzb-0.13
REVISION =		6
CATEGORIES=		news

HOMEPAGE=		http://www.hellanzb.com/trac/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hellanzb.com/distfiles/

MODULES=		lang/python

RUN_DEPENDS=		archivers/par2cmdline \
			archivers/unrar \
			devel/py-twisted/core \
			devel/py-twisted/web \
			news/py-yenc

MODPY_ADJ_FILES=	hellanzb.py

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Hellanzb/Core.py

.include <bsd.port.mk>
