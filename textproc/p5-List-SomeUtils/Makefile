COMMENT =	provide the stuff missing in List::Util

DISTNAME =	List-SomeUtils-0.59

CATEGORIES =	textproc

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		textproc/p5-List-SomeUtils-XS>=0.54

RUN_DEPENDS =		textproc/p5-List-SomeUtils-XS>=0.54 \
			devel/p5-Module-Implementation>=0.04

TEST_DEPENDS =		devel/p5-Test-LeakTrace

PKG_ARCH =	*

post-extract:
	# install-xt-tools.sh contains "curl ... | sh", remove to be secure
	rm -- ${WRKSRC}/dev-bin/install-xt-tools.sh

.include <bsd.port.mk>
