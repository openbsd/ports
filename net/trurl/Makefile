COMMENT=	command line tool for URL parsing and manipulation

DISTNAME=	trurl-0.16.1
CATEGORIES=	net
HOMEPAGE=	https://curl.se/trurl/

MAINTAINER=	David Leadbeater <dgl@dgl.cx>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c curl

SITES=		https://curl.se/trurl/dl/

MODULES=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

BUILD_DEPENDS=	shells/bash
LIB_DEPENDS=	net/curl
TEST_DEPENDS=	${MODPY_RUN_DEPENDS}

# install target combines PREFIX and DISTDIR, this puts the files in the
# correct location.
FAKE_FLAGS=	PREFIX="${TRUEPREFIX}"\
		MANDIR="${TRUEPREFIX}/man/man1"

TEST_FLAGS=	PYTHON3=${MODPY_BIN}

USE_GMAKE=	Yes
CONFIGURE_STYLE= none

ALL_TARGET=	all completions

post-extract:
	sed -i 's,/bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/scripts/*.sh

.include <bsd.port.mk>
