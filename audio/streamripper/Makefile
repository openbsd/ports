# $OpenBSD: Makefile,v 1.4 2002/12/09 15:37:23 brad Exp $

COMMENT=		"rip shoutcast streams to local mp3s"

DISTNAME=		streamripper-1.0.5
CATEGORIES=		audio

HOMEPAGE=		http://streamripper.sourceforge.net/

MAINTAINER=		Mark Grimes <mark@stateful.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://streamripper.sourceforge.net/dl/

CONFIGURE_STYLE=	gnu

DOC=	CHANGES COPYING README THANKS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/streamripper ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/streamripper
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/streamripper
.endfor

NO_REGRESS=		Yes

.include <bsd.port.mk>
