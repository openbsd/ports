# $OpenBSD: Makefile,v 1.21 2000/07/23 18:21:20 brad Exp $

DISTNAME=	squid-2.3.STABLE4
PKGNAME=	squid-2.3
CATEGORIES=	www
NEED_VERSION=	1.310
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.3/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.3/bugs/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

PATCHFILES=	squid-2.3.stable4-ftp_icon_not_found.patch:0 \
		squid-2.3.stable4-internal_dns_rcode_table_formatting.patch:0

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
STATEDIR?=	/var/squid
SUBST_VARS=	SYSCONFDIR STATEDIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir="${STATEDIR}"

FAKE_FLAGS=	MFLAGS="DESTDIR=\"${WRKINST}\""

MAKE_FILE=	makefile

.include <bsd.port.mk>
