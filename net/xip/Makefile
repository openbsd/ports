# Makefile for:		xip
# Version required:	1.3.2
# Date created:		21 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/02/12 08:02:29 turan Exp $

DISTNAME=	xip-1.3.2

CATEGORIES=	net

MASTER_SITES=	http://www.capmedia.fr/mgall/xip/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_AUTOCONF=	yes

CONFIGURE_ENV=	INCLUDES="-I${X11BASE}/include" \
		LIBS="-L${X11BASE}/lib -lX11 -lXext -lXt -lXaw -lXmu"

USE_X11=	yes

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
