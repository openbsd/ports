# $OpenBSD: Makefile,v 1.9 2001/03/22 22:06:40 brad Exp $

DISTNAME=	rtptools-1.9
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/schulzrinne/rtptools/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
