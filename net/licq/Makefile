# OpenBSD makefile for: Licq
# Version required:     0.43
# Date created:         13 Oct 1998
# Whom:                 jbi130@mail.usask.ca
#
# $OpenBSD: Makefile,v 1.2 1998/12/10 06:16:35 form Exp $
#
DISTNAME=	licq-0.44
CATEGORIES=	net
MASTER_SITES=	http://pages.infinit.net/fairoff/licq/

MAINTAINER=	form@openbsd.org

LIB_DEPENDS=	qt\\.1\\.:${PORTSDIR}/x11/qt

#CONFIGURE_ENV+=	INSTALL=/usr/bin/install

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-configure:
	@cd ${WRKSRC}; env INSTALL="/usr/bin/install" \
		sh ./configure --prefix=${PREFIX}

.include <bsd.port.mk>
