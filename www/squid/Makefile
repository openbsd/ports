# $OpenBSD: Makefile,v 1.19 2000/07/20 01:17:09 brad Exp $

DISTNAME=	squid-2.3.STABLE4
PKGNAME=	squid-2.3
CATEGORIES=	www
NEED_VERSION=	1.310
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.3/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

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
