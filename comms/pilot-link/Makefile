# $OpenBSD: Makefile,v 1.25 2001/09/27 00:32:36 pvalchev Exp $

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

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/scripts

.include <bsd.port.mk>
