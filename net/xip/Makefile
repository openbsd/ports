# Makefile for:		xip
# Version required:	1.3.2
# Date created:		21 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.9 2000/04/09 17:37:40 espie Exp $

BROKEN=		sources moved

DISTNAME=	xip-1.3.2

CATEGORIES=	net
FAKE=No

MASTER_SITES=	http://www.capmedia.fr/mgall/xip/

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
