# $OpenBSD: Makefile,v 1.13 2002/03/21 21:09:18 espie Exp $

COMMENT=	"record, playback and monitor RTPv2 data streams"

DISTNAME=	rtptools-1.9
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/schulzrinne/rtptools/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>
NEED_VERSION=	1.515

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MAKE_ENV=	ARCH=openbsd CC=cc

BINFILES=	rtpdump rtpplay rtpsend rtptrans
DOCFILES=	README CHANGES.html rtptools.html

post-extract:
	@ln -s ${WRKSRC}/freebsd ${WRKSRC}/openbsd
	@ln -s ${WRKSRC}/Makefile.freebsd ${WRKSRC}/Makefile.openbsd

do-install:
.for i in ${BINFILES}
	${INSTALL_PROGRAM} ${WRKSRC}/openbsd/${i} ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rtptools
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/rtptools
.endfor

.include <bsd.port.mk>
