# New ports collection makefile for:	xfmail
# Version required:			1.3
# Date created:				08 July 1998
# Whom:					form@vs.itam.nsc.ru
#
# $OpenBSD: Makefile,v 1.2 1998/07/09 07:12:02 form Exp $
# NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp
#

DISTNAME=       xfmail-1.3
CATEGORIES=     mail x11
MASTER_SITES=	ftp://burka.netvision.net.il/pub/xfmail/

MAINTAINER=	form@vs.itam.nsc.ru

OS_RELEASE!=    uname -r
OS_HAS_XPM=     2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=    Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif
LIB_DEPENDS+=	forms\\.0\\.88:${PORTSDIR}/x11/xforms

#DEPENDS+=	gdbm-1.7.3:${PORTSDIR}/databases/gdbm

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

RESTRICTED=	"Selling this software requires permission of the authors."

USE_X11=	YES
GNU_CONFIGURE=	YES

pre-configure:
	@${CP} -f ${FILESDIR}/config.cache ${WRKSRC}

post-install:
	${MKDIR} ${PREFIX}/share/doc/xfmail
	${INSTALL_DATA} ${WRKSRC}/Copyright ${PREFIX}/share/doc/xfmail

.include <bsd.port.mk>
