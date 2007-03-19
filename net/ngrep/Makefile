# $OpenBSD: Makefile,v 1.25 2007/03/19 22:44:06 jolan Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.45
CATEGORIES=     net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ngrep.sourceforge.net/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

NO_REGRESS=	Yes

USE_GMAKE=	Yes
AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6 \
		 --enable-pcre

.include <bsd.port.mk>
