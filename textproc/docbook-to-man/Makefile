# $OpenBSD: Makefile,v 1.10 2008/10/13 10:56:38 kevlo Exp $

COMMENT=	convert docbook to man
CATEGORIES=	textproc converters

VERSION=	0.0
HOMEPAGE=	http://www.oasis-open.org/docbook/tools/dtm/
MASTER_SITES= 	http://www.oasis-open.org/docbook/tools/dtm/
DIST_SUBDIR=	${DISTNAME}-${VERSION}
DISTNAME=docbook-to-man
PKGNAME=docbook-to-man-${VERSION}p1
WANTLIB=	c

# basic in debian
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes

CONFIGURE_STYLE=imake noman

RUN_DEPENDS=	::textproc/sp  ::textproc/docbook ::textproc/openjade

NO_REGRESS=	Yes

pre-configure:
	perl -pi.bak -e 's,/tmp/dtm\.\$$\$$\.psinc,\$$TMPFILE,;' ${WRKDIST}/cmd/docbook-to-man.sh

.include <bsd.port.mk>
