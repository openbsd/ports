# $OpenBSD: Makefile,v 1.1.1.1 2005/11/04 02:19:33 naddy Exp $
 
COMMENT=		"command line MIDI sequencer and filter"
DISTNAME=		midish-0.2.2
CATEGORIES=		audio
HOMEPAGE=		http://caoua.org/midish/	
MAINTAINER=		Alexandre Ratchov <alex-contact@caoua.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
WANTLIB=		c termcap readline
NO_REGRESS=		Yes

do-install:
.for i in midish rmidish smfplay smfrec
	${INSTALL_PROGRAM} ${WRKBUILD}/$i ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/$i.1 ${PREFIX}/man/man1
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/midish
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/manual.html \
	        ${PREFIX}/share/doc/midish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/midish
	${INSTALL_DATA} ${WRKSRC}/midishrc ${WRKSRC}/sample.sng \
		${PREFIX}/share/examples/midish


.include <bsd.port.mk>
