# $OpenBSD: Makefile,v 1.5 2000/02/11 01:10:06 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $
#

DISTNAME=       xfmail-1.3
CATEGORIES=     mail x11
MASTER_SITES=	ftp://burka.netvision.net.il/pub/xfmail/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS+=	forms:${PORTSDIR}/x11/xforms

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

RESTRICTED=	"Selling this software requires permission of the authors."

USE_X11=	YES
GNU_CONFIGURE=	YES

pre-configure:
	@cp -f ${FILESDIR}/config.cache ${WRKSRC}

post-install:
	mkdir -p ${PREFIX}/share/doc/xfmail
	${INSTALL_DATA} ${WRKSRC}/Copyright ${PREFIX}/share/doc/xfmail

.include <bsd.port.mk>
