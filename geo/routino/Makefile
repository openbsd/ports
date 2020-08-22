# $OpenBSD: Makefile,v 1.1.1.1 2020/08/22 06:01:08 kirby Exp $

COMMENT =		OpenStreetMap routing software

DISTNAME =		routino-3.3.2

SHARED_LIBS +=		routino 0.0
SHARED_LIBS +=		routino-slim 0.0

CATEGORIES =		geo

HOMEPAGE =		https://www.routino.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		bz2 c m pthread z

MASTER_SITES =		https://www.routino.org/download/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		archivers/bzip2

MAKE_FLAGS =		CC=${CC} LD=${CC} \
			CFLAGS="${CFLAGS} -pthread -DUSE_PTHREADS -I${LOCALBASE}/include" \
			LDFLAGS="-lm -pthread -lbz2 -lz -L${LOCALBASE}/lib"

USE_GMAKE =		Yes

.include <bsd.port.mk>
