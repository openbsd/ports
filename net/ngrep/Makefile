# $OpenBSD: Makefile,v 1.21 2004/05/04 10:02:37 espie Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.42
CATEGORIES=     net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://ngrep.sourceforge.net/

# Restrictive
PERMIT_PACKAGE_CDROM=	"Restrictions on packages"
PERMIT_PACKAGE_FTP=	"Restrictions on packages"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.57

ALL_TARGET=	ngrep

.include <bsd.port.mk>
