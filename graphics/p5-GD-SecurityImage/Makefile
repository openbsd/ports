# $OpenBSD: Makefile,v 1.3 2008/07/27 17:22:17 simon Exp $

COMMENT=	security image (captcha) generator

MODULES=	cpan
DISTNAME=	GD-SecurityImage-1.66
CATEGORIES=	graphics security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::graphics/p5-GD

CONFIGURE_STYLE=modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-GD-SecurityImage
	${INSTALL_DATA} ${WRKSRC}/eg/demo.pl \
		${PREFIX}/share/examples/p5-GD-SecurityImage

.include <bsd.port.mk>
