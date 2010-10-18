# $OpenBSD: Makefile,v 1.21 2010/10/18 18:36:49 espie Exp $
# Uses pthreads

COMMENT=		daemon/libs/toolkit for routing BGP4+, RIP, OSPF, etc.

V=			2.2.2a
DISTNAME=		mrt-${V}-src
PKGNAME=		mrtd-${V}
REVISION=		1
HOMEPAGE=		http://sourceforge.net/projects/mrt

CATEGORIES=     	net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_ARGS+=	--disable-ipv6 --disable-thread

MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/mrt-${V}/src

USE_GROFF =	Yes
NO_REGRESS=		Yes

FAKE_FLAGS=		DESTDIR=${WRKINST}/${TRUEPREFIX}/sbin \
			MANDIR=${WRKINST}/${TRUEPREFIX}/man

.include <bsd.port.mk>
