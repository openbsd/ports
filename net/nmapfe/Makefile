# $OpenBSD: Makefile,v 1.1.1.1 2000/01/09 07:56:10 brad Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	seanc@cginfo.sk.ca

BUILD_DEPENDS=	nmap:${PORTSDIR}/net/nmap
RUN_DEPENDS=	nmap:${PORTSDIR}/net/nmap
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+

GNU_CONFIGURE=	yes

WRKSRC=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
