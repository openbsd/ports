# $OpenBSD: Makefile,v 1.1.1.1 2008/06/30 05:19:33 steven Exp $

COMMENT=	Audit Record Generation and Utilization System

DISTNAME=	argus-3.0.0
CATEGORIES=     net

HOMEPAGE=	http://qosient.com/argus/
MASTER_SITES=	http://qosient.com/argus/src/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m pcap

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
BUILD_DEPENDS=	::devel/bison

MAKE_FLAGS=	CCOPT=
INSTALL_TARGET=	install install-doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/argus/
	cd ${WRKSRC}/support && tar cf - . | \
		tar -C ${PREFIX}/share/examples/argus/ -xf - 

.include <bsd.port.mk>
