# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:44 espie Exp $

COMMENT=	fast tool to backup video DVDs 'on the fly'

DISTNAME=	streamdvd-0.4
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	http://www.badabum.de/down/

HOMEPAGE=	http://www.badabum.de/streamdvd.html

MAINTAINER=	Marc Smith <merkurie@comcast.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

LIB_DEPENDS=	devel/libdvdread>=4.2.0
WANTLIB=	c m stdc++ dvdread

WRKDIST=	${WRKDIR}/StreamDVD-0.4

ALL_TARGET=all addon

MAKE_ENV+= CC=${CC} CXX=${CXX}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/streamdvd ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/streamanalyze ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/streamdvd
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/streamdvd/README.streamdvd
	${INSTALL_DATA} ${WRKSRC}/contrib/StreamAnalyze/README \
	    ${PREFIX}/share/doc/streamdvd/README.streamanalyze

.include <bsd.port.mk>
