# $OpenBSD: Makefile,v 1.6 2001/03/25 12:40:57 naddy Exp $

COMMENT=	"xbiff-like Window Maker dock app"
DISTNAME=	wmbiff-0.2p
CATEGORIES=	mail x11 x11/windowmaker
NEED_VERSION=	1.363
HOMEPAGE=	http://tinuviel.mizi.com/~tolkien/wmaker/

MAINTAINER=	Cameron Lerch <opcode@skylab.saturn5.yi.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/wmbiff
WRKBUILD=	${WRKDIST}/wmbiff

post-build:
	@mv ${WRKBUILD}/wmbiff.1 ${WRKBUILD}/wmbiff.1.orig
	@sed -e 's%/usr/share/doc/wmbiff/examples/sample.wmbiffrc%${PREFIX}/share/examples/wmbiff/dot.wmbiffrc%g' ${WRKBUILD}/wmbiff.1.orig > ${WRKBUILD}/wmbiff.1
	@mv ${WRKBUILD}/wmbiffrc.5 ${WRKBUILD}/wmbiffrc.5.orig
	@sed -e 's%/usr/share/doc/wmbiff/examples/sample.wmbiffrc%${PREFIX}/share/examples/wmbiff/dot.wmbiffrc%g' ${WRKBUILD}/wmbiffrc.5.orig > ${WRKBUILD}/wmbiffrc.5

.include <bsd.port.mk>
