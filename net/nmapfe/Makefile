# $OpenBSD: Makefile,v 1.5 2000/03/24 23:28:27 espie Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
NEED_VERSION=	 1.230
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz

MAINTAINER=	seanc@cginfo.sk.ca

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	nmap::net/nmap
RUN_DEPENDS=	nmap::net/nmap
LIB_DEPENDS=	gtk.1.2::x11/gtk+

GNU_CONFIGURE=	Yes

WRKDIST=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
