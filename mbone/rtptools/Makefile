# $OpenBSD: Makefile,v 1.4 2000/02/12 08:41:10 turan Exp $

DISTNAME=	rtptools-1.9
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/schulzrinne/rtptools/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
.if !defined(NOPORTDOCS)
	mkdir -p ${PREFIX}/share/doc/rtptools
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/rtptools
.endfor
.endif

.include <bsd.port.mk>
