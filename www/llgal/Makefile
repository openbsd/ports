# $OpenBSD: Makefile,v 1.5 2010/10/19 08:02:53 espie Exp $

COMMENT=	command-line online gallery generator

DISTNAME=	llgal-0.13.16
CATEGORIES=	www graphics

HOMEPAGE=	http://home.gna.org/llgal/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.gna.org/llgal/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	::graphics/ImageMagick \
		::graphics/p5-Image-ExifTool \
		::graphics/p5-Image-Size \
		::devel/p5-Locale-gettext \
		::www/p5-URI

USE_GMAKE=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
USE_GROFF =	Yes

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR}

pre-build:
	@perl -pi -e 's,/usr/share,${PREFIX}/share,' ${WRKSRC}/llgal.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/llgal.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/llgalrc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
