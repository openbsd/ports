# $OpenBSD: Makefile,v 1.23 2005/07/23 19:41:21 brad Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.44
CATEGORIES=     net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ngrep.sourceforge.net/

# Restrictive
PERMIT_PACKAGE_CDROM=	"Restrictions on packages"
PERMIT_PACKAGE_FTP=	"Restrictions on packages"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

NO_REGRESS=	Yes

AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS+= --enable-ipv6

.include <bsd.port.mk>
