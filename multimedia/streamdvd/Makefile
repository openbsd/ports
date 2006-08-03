# $OpenBSD: Makefile,v 1.3 2006/08/03 23:15:57 espie Exp $

COMMENT=	"Fast tool to backup Video DVDs 'on the fly'"
DISTNAME=	streamdvd-0.4
CATEGORIES=	multimedia
MASTER_SITES=	http://www.badabum.de/down/

HOMEPAGE=	http://www.badabum.de/streamdvd.html

MAINTAINER=	Marc Smith <merkurie@comcast.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

LIB_DEPENDS=	dvdread.>=3.0::devel/libdvdread
WANTLIB=	c m stdc++

WRKDIST=	${WRKDIR}/StreamDVD-0.4

ALL_TARGET=all addon

MAKE_ENV+= CC=${CC} CXX=${CXX}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/streamdvd ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/streamanalyze ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/streamdvd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/streamdvd/README.streamdvd
	${INSTALL_DATA} ${WRKSRC}/contrib/StreamAnalyze/README ${PREFIX}/share/doc/streamdvd/README.streamanalyze

.include <bsd.port.mk>
