# $OpenBSD: Makefile,v 1.10 2001/02/12 14:32:36 espie Exp $
# $FreeBSD/NetBSD: credit FreeBSD/NetBSD if thats where the port came from $
# Original from: Christopher Turan <turan@openbsd.org>
#

# 
# What port/package will be created
#
DISTNAME=		mrt-1.6.0a-990430-src
PKGNAME=		mrtd-1.6.0a
CATEGORIES=     	net
NEED_VERSION=		1.355
MAINTAINER=		Christopher Turan <turan@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	--disable-ipv6 --disable-thread

MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/

CONFIGURE_STYLE=	gnu

WRKDIST=			${WRKDIR}/mrt-1.6.0a/src

FAKE_FLAGS=		DESTDIR=${WRKINST}/${TRUEPREFIX}/sbin MANDIR=${WRKINST}/${TRUEPREFIX}/man
.include <bsd.port.mk>
