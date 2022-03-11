COMMENT=	convert docbook to man
CATEGORIES=	textproc converters

VERSION=	0.0
HOMEPAGE=	http://www.oasis-open.org/docbook/tools/dtm/
MASTER_SITES= 	http://www.oasis-open.org/docbook/tools/dtm/
DIST_SUBDIR=	${DISTNAME}-${VERSION}
DISTNAME=	docbook-to-man
PKGNAME=	docbook-to-man-${VERSION}
REVISION=	3

# basic in debian
PERMIT_PACKAGE=	Yes

WANTLIB=	c

CONFIGURE_STYLE=imake noman
DEBUG_PACKAGES=	${BUILD_PACKAGES}

RUN_DEPENDS=	textproc/sp \
		textproc/docbook \
		textproc/openjade

MAKE_FLAGS+=	ROOT=${PREFIX} \
		CDEBUGFLAGS="${CFLAGS}"

NO_TEST=	Yes

pre-configure:
	perl -pi.bak -e 's,/tmp/dtm\.\$$\$$\.psinc,\$$TMPFILE,;' ${WRKDIST}/cmd/docbook-to-man.sh

.include <bsd.port.mk>
