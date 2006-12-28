# $OpenBSD: Makefile,v 1.9 2006/12/28 22:11:44 jasper Exp $

COMMENT=	"optimise a list of route prefixes"

DISTNAME=	aggregate-1.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MASTER_SITES=	http://buffoon.automagic.org/dist/ \
		http://maggie.automagic.org/dist/

MAINTAINER=	Joe Abley <jabley@automagic.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

.include <bsd.port.mk>
