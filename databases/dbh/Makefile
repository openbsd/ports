# $OpenBSD: Makefile,v 1.3 2004/04/18 00:58:31 jolan Exp $

COMMENT=	"library to create Disk Based Hashtables on POSIX systems"
DISTNAME=	dbh_1.0-18
PKGNAME=	${DISTNAME:L:S/-/./:S/_/-/}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dbh/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://dbh.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
