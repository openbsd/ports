# $OpenBSD: Makefile,v 1.20 2000/10/22 14:03:00 espie Exp $

DISTNAME=	pilot-link.0.9.3
PKGNAME=	pilot-link-0.9.3
CATEGORIES=	comms
NEED_VERSION=	1.230
FAKE=	 	Yes	

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk80::x11/tk/8.0

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
