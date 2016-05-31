# $OpenBSD: Makefile,v 1.12 2016/05/31 18:30:23 chris Exp $

COMMENT=	NetFlow collector

DISTNAME=	flowd-0.9.1.20140828

GH_ACCOUNT=	djmdjm
GH_PROJECT=	flowd
GH_COMMIT=	b1040e1b85005d71688775699fdd3e533b1346b8

CATEGORIES=	net
HOMEPAGE=	http://www.mindrot.org/projects/flowd/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c
NO_TEST=		Yes

AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE=	autoconf

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/flowd
	$(INSTALL_DATA) ${WRKSRC}/flowd.conf ${PREFIX}/share/examples/flowd

.include <bsd.port.mk>
