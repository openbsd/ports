# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:34 espie Exp $
# $FreeBSD/NetBSD: credit FreeBSD/NetBSD if thats where the port came from $
# Original from: Christopher Turan <turan@openbsd.org>
#

# 
# What port/package will be created
#
DISTNAME=		mrt-1.6.0a-990430-src
PKGNAME=		mrtd-1.6.0a
CATEGORIES=     	net
NEED_VERSION=		1.191
FAKE=No
MAINTAINER=		Christopher Turan <turan@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

CONFIGURE_ARGS+=	--disable-ipv6 --disable-thread

MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/

GNU_CONFIGURE=		yes (assumed if USE_AUTOCONF is yes)

WRKDIST=			${WRKDIR}/mrt-1.6.0a/src

.include <bsd.port.mk>
