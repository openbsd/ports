# $OpenBSD: Makefile,v 1.18 2000/06/28 07:08:28 brad Exp $

DISTNAME=	squid-2.3.STABLE3
PKGNAME=	squid-2.3
CATEGORIES=	www
NEED_VERSION=	1.301
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.3/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.3/bugs/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

PATCHFILES=	squid-2.3.stable3-carp_compile.patch:0 \
		squid-2.3.stable3-storeExpiredReferenceAge.patch:0 \
		squid-2.3.stable3-zero-content-length.patch:0

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
STATEDIR?=	/var/squid
SUBST_VARS=SYSCONFDIR STATEDIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir="${STATEDIR}"

FAKE_FLAGS=	MFLAGS="DESTDIR=\"${WRKINST}\""

MAKE_FILE=	makefile

.include <bsd.port.mk>
