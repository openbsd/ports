# $OpenBSD: Makefile,v 1.13 2001/05/06 05:00:10 lebel Exp $

COMMENT=	"curses-based ftp program"

DISTNAME=       	ncftp-3.0.1-src
PKGNAME=		ncftp-3.0.1
CATEGORIES=		net
NEED_VERSION=	1.402
MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/

MAINTAINER=		Eric Jackson <shinobi@monkey.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    	intl::devel/gettext
CONFIGURE_STYLE=	gnu dest
WRKDIST=		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
