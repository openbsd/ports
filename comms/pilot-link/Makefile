# $OpenBSD: Makefile,v 1.15 2000/04/01 08:58:06 jakob Exp $

DISTNAME=	pilot-link.0.9.3
PKGNAME=	pilot-link-0.9.3
CATEGORIES=	comms
NEED_VERSION=	1.230

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk83::x11/tk/8.3

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
