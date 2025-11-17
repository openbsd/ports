COMMENT=	provider bindings for Augeas

V=		0.6.0
DISTNAME=	ruby-augeas-${V}
PKGNAME=	${DISTNAME:ruby-%=}
CATEGORIES=	sysutils

HOMEPAGE=	https://augeas.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=	c++abi augeas pthread xml2

SITES=		https://github.com/hercules-team/ruby-augeas/releases/download/release-${V}/
EXTRACT_SUFX=	.tgz

MODULES=	lang/ruby

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKDIST}/ext/augeas/extconf.rb

.include <bsd.port.mk>
