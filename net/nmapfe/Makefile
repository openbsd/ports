# $OpenBSD: Makefile,v 1.3 2000/03/05 18:30:39 espie Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
NEED_VERSION=	1.223
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	seanc@cginfo.sk.ca

BUILD_DEPENDS=	nmap:net/nmap
RUN_DEPENDS=	nmap:net/nmap
LIB_DEPENDS=	gtk.1.2:x11/gtk+

GNU_CONFIGURE=	Yes

WRKDIST=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
