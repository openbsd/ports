# $OpenBSD: Makefile,v 1.24 2001/06/03 23:58:35 brad Exp $

COMMENT=	"PalmPilot communication utilities"

VERSION=	0.9.3
DISTNAME=	pilot-link.${VERSION}
PKGNAME=	pilot-link-${VERSION}
CATEGORIES=	comms palm
NEED_VERSION=	1.406
MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/ \
		ftp://ftp.forth.org/pub/PalmOS/ryerson/

LIB_DEPENDS=	tk83::x11/tk/8.3

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS= --enable-static \
		--with-perl5="/usr/bin/perl" \
		--without-itcl \
		--without-python \
		--without-java

.include <bsd.port.mk>
