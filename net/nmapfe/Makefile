# $OpenBSD: Makefile,v 1.6 2000/04/02 06:06:12 brad Exp $
# Original from: Zach Smith <key@aye.net>

DISTNAME=	nmapfe-0.9.5
CATEGORIES=	net security
NEED_VERSION=	1.234
MASTER_SITES=	http://codebox.net/download/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	nmap::net/nmap
RUN_DEPENDS=	nmap::net/nmap
LIB_DEPENDS=	gtk.1.2::x11/gtk+

MAINTAINER=	seanc@cginfo.sk.ca

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes

WRKDIST=	${WRKDIR}/nmapfe

.include <bsd.port.mk>
