# OpenBSD makefile for: Licq
# Version required:     0.43
# Date created:         13 Oct 1998
# Whom:                 jbi130@mail.usask.ca
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/11/10 08:48:59 form Exp $
#
DISTNAME=	licq-0.44
CATEGORIES=	net
MASTER_SITES=	http://pages.infinit.net/fairoff/licq/

MAINTAINER=	form@openbsd.org

LIB_DEPENDS=	qt\\.1\\.:${PORTSDIR}/x11/qt

CONFIGURE_ENV+=	INSTALL=/usr/bin/install

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

.include <bsd.port.mk>
