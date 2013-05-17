# $OpenBSD: Makefile,v 1.19 2013/05/17 12:55:57 kirby Exp $

COMMENT=		PPTP Server

V=			1.3.4
DISTNAME=		pptpd-$V
PKGNAME=		poptop-$V
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://poptop.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c util 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=poptop/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-bsdppp --with-pppd-ip-alloc
FAKE_FLAGS=		DESTDIR=
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/poptop
	${INSTALL_DATA} ${WRKSRC}/samples/pptpd.conf \
		${PREFIX}/share/examples/poptop/pptpd.conf-sample

.include <bsd.port.mk>
