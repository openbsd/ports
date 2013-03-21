# $OpenBSD: Makefile,v 1.37 2013/03/21 08:46:34 ajacoutot Exp $

COMMENT=	network grep

DISTNAME=	ngrep-1.45
REVISION=	4
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ngrep.sourceforge.net/

# custom BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pcap pcre
LIB_DEPENDS=	devel/pcre

NO_TEST=	Yes

USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.60
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6 \
		 --enable-pcre \
		 --with-dropprivs-user=_ngrep
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS=-L${LOCALBASE}/lib

do-install:
	cd ${WRKSRC}; \
	${INSTALL_PROGRAM} ngrep ${PREFIX}/sbin/ngrep; \
	${INSTALL_MAN} ngrep.8 ${PREFIX}/man/man8/ngrep.8

.include <bsd.port.mk>
