# $OpenBSD: Makefile,v 1.17 2017/05/27 13:55:59 ajacoutot Exp $

COMMENT=		reimplementation of Dan Bernstein's daemontools#'

DISTNAME=		freedt-23
CATEGORIES=		sysutils
REVISION=		0

HOMEPAGE=		http://offog.org/code/freedt.html

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://offog.org/files/

CONFIGURE_STYLE=	gnu

post-install:
	rm -f ${PREFIX}/bin/recordio
	mv ${PREFIX}/bin/{,f}argv0

.include <bsd.port.mk>
