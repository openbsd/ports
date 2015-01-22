# $OpenBSD: Makefile,v 1.11 2015/01/22 17:47:51 naddy Exp $

COMMENT=	NetFlow collector

DISTNAME=	flowd-0.9.1
CATEGORIES=	net
MASTER_SITES=	http://www2.mindrot.org/files/flowd/

HOMEPAGE=	http://www.mindrot.org/projects/flowd/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/flowd
	$(INSTALL_DATA) ${WRKSRC}/flowd.conf ${PREFIX}/share/examples/flowd

.include <bsd.port.mk>
