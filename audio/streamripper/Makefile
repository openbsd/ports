# $OpenBSD: Makefile,v 1.2 2002/09/03 06:11:42 mark Exp $

COMMENT=		"rip shoutcast streams to local mp3s"

DISTNAME=		streamripper-1.0.5
CATEGORIES=		audio

HOMEPAGE=		http://streamripper.sourceforge.net/

MAINTAINER=		Mark Grimes <mark@openbsd.org>

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

.include <bsd.port.mk>
