# $OpenBSD: Makefile,v 1.17 2012/09/24 19:38:46 pea Exp $

COMMENT=	PostgreSQL tools from Skype

MODPY_EGG_VERSION=	3.1
DISTNAME=		skytools-${MODPY_EGG_VERSION}

CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/skytools

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB= 	c ${MODPY_WANTLIB}

MASTER_SITES=	http://pgfoundry.org/frs/download.php/3321/

MODULES=	lang/python

BUILD_DEPENDS=	databases/postgresql,-server 

RUN_DEPENDS=    databases/py-psycopg2

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-python=${MODPY_BIN} 

BINFILES=	bulk_loader.py cube_dispatcher.py londiste.py \
		pgqadm.py queue_mover.py queue_splitter.py \
		scriptmgr.py skytools_upgrade.py table_dispatcher.py \
		walmgr.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/Makefile
	@find ${WRKSRC} -name '*.py' \
		-exec perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' {} \; 
	@perl -pi -e 's,share/doc,share/examples,' ${WRKSRC}/setup.py

.include <bsd.port.mk>
