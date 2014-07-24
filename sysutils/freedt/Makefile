# $OpenBSD: Makefile,v 1.15 2014/07/24 17:20:46 zhuk Exp $

COMMENT=		reimplementation of Dan Bernstein's daemontools#'

DISTNAME=		freedt-0.22
REVISION=		2
CATEGORIES=		sysutils

HOMEPAGE=		http://offog.org/code/freedt.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://offog.org/files/

CONFIGURE_STYLE=	gnu

post-install:
	rm -f ${PREFIX}/bin/recordio
	mv ${PREFIX}/bin/{,f}argv0

.include <bsd.port.mk>
