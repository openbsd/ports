# $OpenBSD: Makefile,v 1.9 2000/10/22 15:43:05 espie Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
NEED_VERSION=	1.305
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Sean Cavanaugh <seanc@cginfo.sk.ca>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes          

BUILD_DEPENDS=	nmap:net/nmap
RUN_DEPENDS=	nmap:net/nmap
LIB_DEPENDS=	gtk.1.2:x11/gtk+

CONFIGURE_STYLE=gnu

WRKDIST=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
