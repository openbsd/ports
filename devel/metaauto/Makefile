# $OpenBSD: Makefile,v 1.3 2003/05/22 22:54:05 jcs Exp $

COMMENT=	"wrapper for gnu auto*"

VERSION=	0.1
DISTNAME=	metaauto-${VERSION}
CATEGORIES=	devel
DISTFILES=

MAINTAINER=	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

SCRIPTS=autoconf autoupdate autoheader autoreconf
WRKDIST=${WRKDIR}

do-build:
.for i in ${SCRIPTS}
	sed -e s,@LOCALBASE@,${LOCALBASE}, -e s,@SCRIPT@,$i, <${FILESDIR}/meta.in >${WRKBUILD}/$i
.endfor

do-install:
.for i in ${SCRIPTS}
	${INSTALL_SCRIPT} ${WRKBUILD}/$i ${PREFIX}/bin
.endfor

.include <bsd.port.mk>
