# $OpenBSD: Makefile,v 1.16 2013/03/10 22:55:02 espie Exp $

COMMENT=	server for the DAA protocol

DISTNAME=	daapd-0.2.4b
REVISION=	5
EXTRACT_SUFX=	.tgz
CATEGORIES=	audio net
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.deleet.de/projekte/daap/daapd/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++ z mp4v2>=1 id3tag>=3.0 howl

LIB_DEPENDS=	multimedia/libmp4v2>=1.9.1 \
		audio/libid3tag \
		net/avahi

NO_TEST=	Yes
USE_GMAKE=	Yes
MAKE_FILE=	makefile
MAKE_ENV+=	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"

pre-configure:
	@perl -pi -e 's,_SYSCONFDIR_,${SYSCONFDIR},g' \
		${WRKSRC}/README ${WRKSRC}/daapd.8 ${WRKSRC}/daapd.cc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/daapd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/daapd
	${INSTALL_PROGRAM} ${WRKSRC}/daapd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/daapd.8 ${PREFIX}/man/man8
	${INSTALL_DATA} ${WRKSRC}/FAQ ${WRKSRC}/README \
		${PREFIX}/share/doc/daapd
	${INSTALL_DATA} ${WRKSRC}/daapd-example.conf ${PREFIX}/share/examples/daapd

.include <bsd.port.mk>
