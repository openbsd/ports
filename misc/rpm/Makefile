# $OpenBSD: Makefile,v 1.24 2011/04/17 18:23:19 jasper Exp $

COMMENT =	redhat package manager

DISTNAME =	rpm-3.0.6
REVISION =	5
SHARED_LIBS =	rpm		0.1 \
		rpmbuild	0.0
CATEGORIES =	misc archivers emulators

PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes


MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	http://www.rpm.org/
MASTER_SITES =	ftp://ftp.mirrorservice.org/sites/ftp.rpm.org/pub/rpm/dist/rpm-3.0.x/ \
		ftp://ftp.rpm.org/pub/rpm/dist/rpm-3.0.x/

MODULES =	devel/gettext
WANTLIB += 	bz2 c popt z
LIB_DEPENDS +=	archivers/bzip2 \
		devel/popt

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/popt

RPM_INTEL =		RPMS/i386
SUBST_VARS =		RPM_INTEL

# Enforce check for pgp, so no build-time depend is needed
CONFIGURE_ENV =		PGPBIN=$(LOCALBASE)/bin/pgp
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ENV +=	varprefix=/var

SEPARATE_BUILD =	simple

.include <bsd.port.mk>
