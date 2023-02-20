COMMENT =	combines List::Util, List::SomeUtils and List::UtilsBy

DISTNAME =	List-AllUtils-0.19

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		textproc/p5-List-SomeUtils>=0.58 \
			textproc/p5-List-UtilsBy>=0.11

PKG_ARCH =		*

post-extract:
	# install-xt-tools.sh contains "curl ... | sh", remove to be secure
	rm -- ${WRKSRC}/dev-bin/install-xt-tools.sh

.include <bsd.port.mk>
