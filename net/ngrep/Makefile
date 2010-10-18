# $OpenBSD: Makefile,v 1.30 2010/10/18 18:36:50 espie Exp $

COMMENT=	network grep

DISTNAME=	ngrep-1.45
REVISION=	1
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
USE_GROFF =	Yes
AUTOCONF_VERSION= 2.60
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6 \
		 --enable-pcre \
		 --with-dropprivs-user=_ngrep
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
