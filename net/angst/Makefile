# $OpenBSD: Makefile,v 1.10 2002/12/22 01:20:16 margarida Exp $

COMMENT=	"active packet sniffer"

DISTNAME=	angst-0.4b
CATEGORIES=	net

HOMEPAGE=	http://angst.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=angst/} \
		${MASTER_SITE_PACKETSTORM:=sniffers/angst/}	

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	net::net/libnet

ALL_TARGET=	angst

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" \
		INCLUDE="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib `libnet-config --libs` -lpcap"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/angst ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/angst.8 ${PREFIX}/man/man8/angst.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/angst
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/angst
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${PREFIX}/share/doc/angst

.include <bsd.port.mk>
