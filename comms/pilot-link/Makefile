# $OpenBSD: Makefile,v 1.23 2001/06/02 23:41:45 pvalchev Exp $

COMMENT=	"PalmPilot communication utilities"

DISTNAME=	pilot-link.0.9.3
PKGNAME=	pilot-link-0.9.3
CATEGORIES=	comms palm
NEED_VERSION=	1.406

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk80::x11/tk/8.0

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
