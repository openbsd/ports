COMMENT=	grep like tool, aimed at programmers

MODULES=	cpan
PKG_ARCH=	*
V=		3.9.0
DISTNAME=	ack-v$V
PKGNAME=	p5-ack-$V
CPAN_AUTHOR=	PETDANCE
CATEGORIES=	textproc

PORTROACH=	skipv:2.999_08

HOMEPAGE=	https://beyondgrep.com/

# perl
PERMIT_PACKAGE=	Yes

# tar: Extended header record length 6677 is out of range
BUILD_DEPENDS=	archivers/gtar
TAR=		gtar

RUN_DEPENDS=	devel/p5-File-Next

TEST_DEPENDS=	devel/p5-IO-Tty \
		shells/bash \
		textproc/p5-YAML-PP

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
