# New ports collection makefile for:   jpilot
# Version required:    0.96
# Date created:        23 August 1999
# Whom:                Alex Varju <varju@webct.com>
#
# $OpenBSD: Makefile,v 1.6 2000/03/24 23:28:03 espie Exp $
# $FreeBSD: ports/palm/jpilot/Makefile,v 1.6 1999/11/11 22:40:39 sumikawa Exp $

DISTNAME=	jpilot-0.96
CATEGORIES=	comms
NEED_VERSION=	 1.230
MASTER_SITES=	http://jpilot.linuxbox.com/

MAINTAINER=	evan.cordes@UMICH.EDU

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pisock.3::comms/pilot-link \
		gtk.1.2::x11/gtk+

USE_AUTOCONF=	yes

post-install:
	mkdir -p ${PREFIX}/share/doc/jpilot
	cp ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
