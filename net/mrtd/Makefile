# $OpenBSD: Makefile,v 1.13 2001/08/30 02:24:52 brad Exp $
# Uses pthreads

COMMENT=		"daemon/libs/toolkit for routing BPG4, RIP, OSPF, etc."

V=			2.2.2a
DISTNAME=		mrt-${V}-src
PKGNAME=		mrtd-${V}
HOMEPAGE=		http://www.mrtd.net/

CATEGORIES=     	net
NEED_VERSION=		1.392

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	--disable-ipv6 --disable-thread

MASTER_SITES=		ftp://ftp.merit.edu/net-research/mrt/

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/mrt-${V}/src

FAKE_FLAGS=		DESTDIR=${WRKINST}/${TRUEPREFIX}/sbin \
			MANDIR=${WRKINST}/${TRUEPREFIX}/man

.include <bsd.port.mk>
