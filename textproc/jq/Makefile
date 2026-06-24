COMMENT=	lightweight and flexible command-line JSON processor

V=		1.8.2
DISTNAME=	jq-$V

SHARED_LIBS +=	jq                        2.2 # 1.4

CATEGORIES=	textproc

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://jqlang.org
SITES=		https://github.com/jqlang/jq/releases/download/jq-$V/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c m onig pthread

USE_GMAKE=	Yes
BUILD_DEPENDS=	textproc/gsed
LIB_DEPENDS=	textproc/oniguruma
TEST_DEPENDS=	shells/bash

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-oniguruma=${LOCALBASE}

# no need for python to regenerate existing docs and manual
CONFIGURE_ARGS +=	--disable-docs

# makes all tests fail with SIGILL
CONFIGURE_ARGS +=	--disable-valgrind

pre-configure:
	ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>
