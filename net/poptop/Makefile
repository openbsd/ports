# $OpenBSD: Makefile,v 1.11 2010/07/12 22:07:41 sthen Exp $

COMMENT=		PPTP Server

V=			1.3.4
DISTNAME=		pptpd-$V
PKGNAME=		poptop-$V
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.poptop.org/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/poptop/
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/poptop/

.include <bsd.port.mk>
