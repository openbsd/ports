# $OpenBSD: Makefile,v 1.30 2001/03/14 14:39:54 brad Exp $

DISTNAME=	squid-2.3.STABLE4
PKGNAME=	squid-2.3
CATEGORIES=	www
NEED_VERSION=	1.336
MASTER_SITES=	http://www.squid-cache.org/Versions/v2/2.3/
MASTER_SITES0=	http://www.squid-cache.org/Versions/v2/2.3/bugs/
EXTRACT_SUFX=	-src.tar.gz
DIST_SUBDIR=	squid

PATCHFILES=	squid-2.3.stable4-ftp_icon_not_found.patch:0 \
		squid-2.3.stable4-internal_dns_rcode_table_formatting.patch:0 \
		squid-2.3.stable4-ipfw_configure.patch:0 \
		squid-2.3.stable4-invalid_ip_acl_entry.patch:0 \
		squid-2.3.stable4-accel_only_access.patch:0 \
		squid-2.3.stable4-html_quoting.patch:0 \
		squid-2.3.stable4-carp-assertion.patch:0 \
		squid-2.3.stable4-snmp-community-null-pointer.patch:0

HOMEPAGE=	http://www.squid-cache.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/squid
STATEDIR?=	/var/squid
SUBST_VARS=	STATEDIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--localstatedir="${STATEDIR}"

FLAVORS=	transparent heap
FLAVOR?=

.if ${FLAVOR:L:Mtransparent}
CONFIGURE_ARGS+= --enable-ipf-transparent
.endif

.if ${FLAVOR:L:Mheap}
CONFIGURE_ARGS+= --enable-heap-replacement
.endif

MAKE_FILE=	makefile

.include <bsd.port.mk>
