# $OpenBSD: Makefile,v 1.11 2003/04/09 09:46:05 camield Exp $

COMMENT=	"set of programs to enhance firewall security"

DISTNAME=	proxy-suite-1.9
HOMEPAGE=	http://proxy-suite.suse.de
CATEGORIES=    	net security

MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>

MASTER_SITES= 	ftp://ftp.suse.com/pub/projects/proxy-suite/src/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/proxy-suite
	${INSTALL_DATA} ${WRKSRC}/ftp-proxy/ftp-proxy.conf.sample \
	    ${PREFIX}/share/proxy-suite

.include <bsd.port.mk>
