# $OpenBSD: Makefile,v 1.3 2002/02/21 17:17:09 brad Exp $

COMMENT=	"color management library"

DISTNAME=	lcms-1.08
CATEGORIES=	graphics
NEED_VERSION=	1.500
MASTER_SITES=   ftp://openbsd.comstyle.com/pub/brad/source/ \
                ftp://ftp.dqc.org/pub/brad/source/

HOMEPAGE=	http://www.littlecms.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	Makefile.openbsd

WRKDIST=	${WRKDIR}/${DISTNAME}/src

post-extract:
	@cp -f ${FILESDIR}/Makefile.openbsd ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lcms
	${INSTALL_DATA} ${WRKSRC}/../doc/* ${PREFIX}/share/doc/lcms

do-regress:
	@cd ${WRKSRC}/../testbed && \
		${MAKE_PROGRAM} CFLAGS="${CFLAGS} -I../include" test

.include <bsd.port.mk>
