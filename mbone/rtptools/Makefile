# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:07 espie Exp $

DISTNAME=	rtptools-1.9
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.cs.columbia.edu/pub/schulzrinne/rtptools/

MAINTAINER=	angelos@openbsd.org

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
