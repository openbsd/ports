# $OpenBSD: Makefile,v 1.15 2001/08/07 17:11:58 heko Exp $

COMMENT=	"curses-based ftp program"

DISTNAME=       	ncftp-3.0.3-src
PKGNAME=		ncftp-3.0.3
CATEGORIES=		net
NEED_VERSION=	1.402
MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/
HOMEPAGE=		http://www.ncftp.com/ncftp/

MAINTAINER=		Eric Jackson <shinobi@monkey.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    	intl::devel/gettext
CONFIGURE_STYLE=	gnu dest
WRKDIST=		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
