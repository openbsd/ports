# $OpenBSD: Makefile,v 1.25 2013/10/31 21:12:13 sthen Exp $
# Uses pthreads

COMMENT=		daemon/libs/toolkit for routing BGP4+, RIP, OSPF, etc.

V=			2.2.2a
DISTNAME=		mrt-${V}-src
PKGNAME=		mrtd-${V}
REVISION=		2
HOMEPAGE=		http://sourceforge.net/projects/mrt

CATEGORIES=     	net

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_ARGS+=	--disable-ipv6 --disable-thread

MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/mrt-${V}/src

NO_TEST=		Yes

FAKE_FLAGS=		DESTDIR=${WRKINST}/${TRUEPREFIX}/sbin \
			MANDIR=${WRKINST}/${TRUEPREFIX}/man

.include <bsd.port.mk>
