COMMENT=	Perl module to authenticate against a RADIUS server

DISTNAME=	Authen-Radius-0.32

CATEGORIES=	security

MAINTAINER=	Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Data-HexDump>=0.02 \
		net/p5-Net-IP>=1.26
TEST_DEPENDS=	devel/p5-Test-NoWarnings

pre-configure:
	perl -pi -e \
	    s,/etc/raddb,${WRKINST}/${PREFIX}/share/examples/p5-Authen-Radius, \
	    ${WRKSRC}/install-radius-db.PL

.include <bsd.port.mk>
