# $OpenBSD: Makefile,v 1.12 2012/01/08 11:05:54 eric Exp $

COMMENT=		retrieve and process nzb-files

DISTNAME=		hellanzb-0.13
REVISION =		8
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
