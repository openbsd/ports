# $OpenBSD: Makefile,v 1.35 2019/07/12 20:47:54 sthen Exp $

COMMENT =	Red Hat package manager

DISTNAME =	rpm-3.0.6
REVISION =	8
SHARED_LIBS =	rpm		0.1 \
		rpmbuild	0.0
CATEGORIES =	misc archivers emulators

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  bz2 c iconv intl popt z

HOMEPAGE =	http://www.rpm.org/
MASTER_SITES =	http://ftp.rpm.org/releases/historical/rpm-3.0.x/

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS +=	archivers/bzip2 \
		devel/popt

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.13

RPM_INTEL =		RPMS/i386
SUBST_VARS =		RPM_INTEL

# Enforce check for pgp, so no build-time depend is needed
CONFIGURE_ENV =		PGPBIN=$(LOCALBASE)/bin/pgp
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV +=	varprefix=/var

SEPARATE_BUILD =	Yes

post-install:
	rm -rf ${PREFIX}/src/
	rm -rf ${WRKINST}/var/lib/

.include <bsd.port.mk>
