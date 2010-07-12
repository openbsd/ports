# $OpenBSD: Makefile,v 1.20 2010/07/12 22:07:39 sthen Exp $
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

NO_REGRESS=		Yes

FAKE_FLAGS=		DESTDIR=${WRKINST}/${TRUEPREFIX}/sbin \
			MANDIR=${WRKINST}/${TRUEPREFIX}/man

.include <bsd.port.mk>
