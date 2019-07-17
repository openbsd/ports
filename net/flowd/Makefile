# $OpenBSD: Makefile,v 1.14 2019/07/17 14:46:33 danj Exp $

COMMENT=	NetFlow collector

DISTNAME=	flowd-0.9.1.20140828
REVISION=	0

GH_ACCOUNT=	djmdjm
GH_PROJECT=	flowd
GH_COMMIT=	b1040e1b85005d71688775699fdd3e533b1346b8

CATEGORIES=	net
HOMEPAGE=	http://www.mindrot.org/projects/flowd/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c
NO_TEST=		Yes

AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE=	autoconf

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/flowd
	$(INSTALL_DATA) ${WRKSRC}/flowd.conf ${PREFIX}/share/examples/flowd

.include <bsd.port.mk>
