# $OpenBSD: Makefile,v 1.32 2020/03/20 16:44:22 naddy Exp $

COMMENT=	PostgreSQL tools from Skype

# XXX outdated; http://pgfoundry.org/frs/download.php/3622/skytools-3.2.tar.gz
MODPY_EGG_VERSION=	3.1.1
DISTNAME=		skytools-${MODPY_EGG_VERSION}
REVISION=	6

CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/skytools

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB= 	c pq pthread ${MODPY_WANTLIB}

MASTER_SITES=	https://github.com/downloads/markokr/skytools/

MODULES=	lang/python

BUILD_DEPENDS=	databases/postgresql,-server>=12 \
		databases/postgresql,-main>=12
LIB_DEPENDS=	databases/postgresql,-main>=12
RUN_DEPENDS=    databases/py-psycopg2

NO_TEST=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-python=${MODPY_BIN}

BINFILES=	bulk_loader.py cube_dispatcher.py londiste.py \
		pgqadm.py queue_mover.py queue_splitter.py \
		scriptmgr.py skytools_upgrade.py table_dispatcher.py \
		walmgr.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/Makefile
	find ${WRKSRC} -name '*.py' \
		-exec sed -i 's,/usr/bin/env python,${MODPY_BIN},' {} +

.include <bsd.port.mk>
