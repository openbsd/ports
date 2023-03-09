COMMENT=	grep like tool, aimed at programmers

PORTROACH=	site:https://github.com/beyondgrep/ack3/archive/
MODULES=	cpan
PKG_ARCH=	*
V=		3.7.0
DISTNAME=	ack-v$V
PKGNAME=	p5-ack-$V
CPAN_AUTHOR=	PETDANCE
CATEGORIES=	textproc

HOMEPAGE=	https://beyondgrep.com/

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-File-Next

TEST_DEPENDS=	devel/p5-IO-Tty \
		shells/bash

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
