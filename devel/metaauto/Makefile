# $OpenBSD: Makefile,v 1.4 2004/11/08 22:00:09 mbalmer Exp $

COMMENT=	"wrapper for gnu auto*"

VERSION=	0.2
DISTNAME=	metaauto-${VERSION}
CATEGORIES=	devel
DISTFILES=

MAINTAINER=	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

AUTOCONF_SCRIPTS=autoconf autoupdate autoheader autoreconf
AUTOMAKE_SCRIPTS=automake aclocal

WRKDIST=${WRKDIR}

do-build:
.for i in ${AUTOCONF_SCRIPTS}
	sed -e s,@PROG_VERSION,AUTOCONF_VERSION, -e s,@LOCALBASE@,${LOCALBASE}, -e s,@SCRIPT@,$i, <${FILESDIR}/meta.in >${WRKBUILD}/$i
.endfor
.for i in ${AUTOMAKE_SCRIPTS}
	sed -e s,@PROG_VERSION,AUTOMAKE_VERSION, -e s,@LOCALBASE@,${LOCALBASE}, -e s,@SCRIPT@,$i, <${FILESDIR}/meta.in >${WRKBUILD}/$i
.endfor

do-install:
.for i in ${AUTOCONF_SCRIPTS} ${AUTOMAKE_SCRIPTS}
	${INSTALL_SCRIPT} ${WRKBUILD}/$i ${PREFIX}/bin
.endfor

.include <bsd.port.mk>
