# $OpenBSD: Makefile,v 1.28 2009/03/30 21:19:02 sthen Exp $

COMMENT=	network grep

DISTNAME=	ngrep-1.45
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ngrep.sourceforge.net/

# custom BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pcap
LIB_DEPENDS=	pcre::devel/pcre

NO_REGRESS=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION= 2.60
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6 \
		 --enable-pcre \
		 --with-dropprivs-user=_ngrep
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
