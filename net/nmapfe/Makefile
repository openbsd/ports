# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:33 espie Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

MAINTAINER=	seanc@cginfo.sk.ca

BUILD_DEPENDS=	nmap:${PORTSDIR}/net/nmap
RUN_DEPENDS=	nmap:${PORTSDIR}/net/nmap
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+

GNU_CONFIGURE=	yes

WRKDIST=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
