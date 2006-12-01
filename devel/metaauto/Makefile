# $OpenBSD: Makefile,v 1.8 2006/12/01 16:30:42 espie Exp $

COMMENT=	"wrapper for gnu auto*"

VERSION=	0.6
DISTNAME=	metaauto-${VERSION}
CATEGORIES=	devel
DISTFILES=	pkg-config-0.19.tar.gz

MAINTAINER=	Marc Espie <espie@openbsd.org>

MASTER_SITES=	http://www.freedesktop.org/software/pkgconfig/releases/ \
		${MASTER_SITE_GNOME:=sources/pkg-config/0.19/}

# BSD, except pkg.m4 which is GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

AUTOCONF_SCRIPTS=autoconf autoupdate autoheader autoreconf autom4te
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKDIR}/pkg-config-0.19/pkg.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
