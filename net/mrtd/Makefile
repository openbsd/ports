# $OpenBSD: Makefile,v 1.3 2000/02/12 08:41:11 turan Exp $
# $FreeBSD/NetBSD: credit FreeBSD/NetBSD if thats where the port came from $
# Original from: Christopher Turan <turan@openbsd.org>
#

# 
# What port/package will be created
#
DISTNAME=		mrt-1.6.0a-990430-src
PKGNAME=		mrt-1.6.0a
CATEGORIES=     	net
MAINTAINER=		turan@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/
NEED_VERSION=	1.191

GNU_CONFIGURE=		yes (assumed if USE_AUTOCONF is yes)

WRKDIST=			${WRKDIR}/mrt-1.6.0a/src

.include <bsd.port.mk>
