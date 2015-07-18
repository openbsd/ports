# $OpenBSD: Makefile,v 1.21 2015/07/18 21:11:18 jasper Exp $

COMMENT=	PostgreSQL tools from Skype

MODPY_EGG_VERSION=	3.1.1
DISTNAME=		skytools-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/skytools

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= 	c ${MODPY_WANTLIB}

MASTER_SITES=	https://github.com/downloads/markokr/skytools/

MODULES=	lang/python

BUILD_DEPENDS=	databases/postgresql,-server

RUN_DEPENDS=    databases/py-psycopg2

NO_TEST=	Yes
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
		-exec sed -i 's,/usr/bin/env python,${MODPY_BIN},' {} \;
	@sed -i 's,share/doc,share/examples,' ${WRKSRC}/setup.py

.include <bsd.port.mk>
