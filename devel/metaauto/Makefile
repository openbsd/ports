# $OpenBSD: Makefile,v 1.12 2007/10/30 21:50:36 eric Exp $

COMMENT=	wrapper for gnu auto*

VERSION=	0.7
DISTNAME=	metaauto-${VERSION}
CATEGORIES=	devel
DISTFILES=	pkg-config-0.21.tar.gz

MAINTAINER=	Marc Espie <espie@openbsd.org>

MASTER_SITES=	http://pkg-config.freedesktop.org/releases/


# BSD, except pkg.m4 which is GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

AUTOCONF_SCRIPTS=autoconf autoupdate autoheader autoreconf autom4te
AUTOMAKE_SCRIPTS=automake aclocal

WRKDIST=${WRKDIR}

NO_REGRESS=Yes

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKDIR}/pkg-config-0.21/pkg.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
