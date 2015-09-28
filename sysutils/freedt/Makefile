# $OpenBSD: Makefile,v 1.16 2015/09/28 17:54:05 jca Exp $

COMMENT=		reimplementation of Dan Bernstein's daemontools#'

DISTNAME=		freedt-23
CATEGORIES=		sysutils

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
