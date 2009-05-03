# $OpenBSD: Makefile,v 1.6 2009/05/03 18:32:15 ratchov Exp $
 
COMMENT=		command line MIDI sequencer and filter
DISTNAME=		midish-0.4.0
CATEGORIES=		audio
HOMEPAGE=		http://caoua.org/midish/	
MAINTAINER=		Alexandre Ratchov <alex@caoua.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
WANTLIB=		c termcap readline
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX}
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/midish ${WRKBUILD}/rmidish ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/smfplay ${WRKSRC}/smfrec ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_MAN} midish.1 rmidish.1 smfplay.1 smfrec.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/midish
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/manual.html \
	        ${PREFIX}/share/doc/midish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/midish
	${INSTALL_DATA} ${WRKSRC}/midishrc ${WRKSRC}/sample.sng \
		${PREFIX}/share/examples/midish

.include <bsd.port.mk>
