# $OpenBSD: Makefile,v 1.1.1.1 2000/02/28 09:27:02 camield Exp $

DISTNAME=	proxy-suite-1.7
CATEGORIES=    	net security
MAINTAINER=	cd@sentia.nl
HOMEPAGE=	http://proxy-suite.suse.de

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES= \
	ftp://ftp.suse.com/pub/projects/proxy-suite/ \
	ftp://ftp.crc.ca/pub/systems/linux/suse/projects/proxy-suite/ \
	ftp://ftp.gwdg.de/pub/linux/suse/ftp.suse.com/projects/proxy-suite/ \
	ftp://ftp.funet.fi/pub/mirrors/ftp.suse.com/pub/projects/proxy-suite/

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-libwrap=/usr/lib/

pre-install:
	${STRIP} ${WRKSRC}/ftp-proxy/ftp-proxy

post-install:
	@PREFIX=${PREFIX} ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
