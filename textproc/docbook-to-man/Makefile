# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:41 espie Exp $

COMMENT=	convert docbook to man
CATEGORIES=	textproc converters

VERSION=	0.0
HOMEPAGE=	http://www.oasis-open.org/docbook/tools/dtm/
MASTER_SITES= 	http://www.oasis-open.org/docbook/tools/dtm/
DIST_SUBDIR=	${DISTNAME}-${VERSION}
DISTNAME=	docbook-to-man
PKGNAME=	docbook-to-man-${VERSION}
REVISION =	1
WANTLIB=	c

# basic in debian
PERMIT_PACKAGE_CDROM=Yes

CONFIGURE_STYLE=imake noman

RUN_DEPENDS=	textproc/sp  textproc/docbook textproc/openjade

NO_TEST=	Yes

pre-configure:
	perl -pi.bak -e 's,/tmp/dtm\.\$$\$$\.psinc,\$$TMPFILE,;' ${WRKDIST}/cmd/docbook-to-man.sh

.include <bsd.port.mk>
