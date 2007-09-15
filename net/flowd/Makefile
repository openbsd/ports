# $OpenBSD: Makefile,v 1.5 2007/09/15 22:36:53 merdely Exp $

COMMENT=	NetFlow collector

DISTNAME=	flowd-0.9
CATEGORIES=	net
MASTER_SITES=	http://www2.mindrot.org/files/flowd/

HOMEPAGE=	http://www.mindrot.org/flowd.html

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/flowd
	$(INSTALL_DATA) ${WRKSRC}/flowd.conf ${PREFIX}/share/examples/flowd

.include <bsd.port.mk>
