# Makefile for:		xip
# Version required:	1.3.2
# Date created:		21 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.10 2000/06/08 21:00:49 espie Exp $

BROKEN=		sources seem to have vanished

DISTNAME=	xip-1.3.2

CATEGORIES=	net

MASTER_SITES=	http://www.capmedia.fr/mgall/xip/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_AUTOCONF=	Yes

CONFIGURE_ENV=	INCLUDES="-I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11 -lXext -lXt -lXaw -lXmu"

USE_X11=	Yes

post-build:
	@echo "(this use of mktemp has been made safe in this OpenBSD port)"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xip/xip ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/xip.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/xip/Xip.ad ${PREFIX}/lib/X11/app-defaults/Xip
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xip
	for dir in pkc pkt ; do \
	   ${INSTALL_DATA_DIR} ${PREFIX}/lib/xip/$$dir ; \
	   ${INSTALL_DATA} ${WRKSRC}/lib/$$dir/* ${PREFIX}/lib/xip/$$dir ; \
	done

.include <bsd.port.mk>
