# $OpenBSD: Makefile,v 1.2 2006/02/08 04:54:48 david Exp $

COMMENT=	"server for the DAA protocol"
DISTNAME=	daapd-0.2.4a
EXTRACT_SUFX=	.tgz
CATEGORIES=	audio net
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.deleet.de/projekte/daap/daapd/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	mp4v2.0.0::audio/faad \
		id3tag.3.0::audio/libid3tag \
		howl.0.0::net/howl

WANTLIB=	c m pthread stdc++ z

NO_REGRESS=	Yes
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
