# $OpenBSD: Makefile,v 1.15 2010/07/12 22:07:41 sthen Exp $

COMMENT=	set of programs to enhance firewall security

DISTNAME=	proxy-suite-1.9
REVISION=	0
HOMEPAGE=	http://www.suse.com/en/whitepapers/proxy_suite/
CATEGORIES=    	net security

MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES= 	ftp://ftp.suse.com/pub/projects/proxy-suite/src/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/proxy-suite
	${INSTALL_DATA} ${WRKSRC}/ftp-proxy/ftp-proxy.conf.sample \
	    ${PREFIX}/share/proxy-suite

.include <bsd.port.mk>
