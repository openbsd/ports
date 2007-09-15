# $OpenBSD: Makefile,v 1.1.1.1 2007/09/15 16:40:52 simon Exp $

COMMENT=        security image (captcha) generator

MODULES=	cpan
DISTNAME=	GD-SecurityImage-1.64
CATEGORIES=     graphics security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::graphics/p5-GD

CONFIGURE_STYLE=modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-GD-SecurityImage
	sed -e 's!\r!!' ${WRKSRC}/eg/demo.pl \
		> ${PREFIX}/share/examples/p5-GD-SecurityImage/demo.pl

.include <bsd.port.mk>
