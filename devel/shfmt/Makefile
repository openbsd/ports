COMMENT =	shell parser, formatter, and interpreter

MODGO_MODNAME =	mvdan.cc/sh/v3
MODGO_VERSION =	v3.4.3

DISTNAME =	shfmt-${MODGO_VERSION}

CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/mvdan/sh

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

BUILD_DEPENDS =	textproc/groff \
		textproc/scdoc

do-install:
	( cd ${WRKSRC} && scdoc < cmd/shfmt/shfmt.1.scd > \
		${PREFIX}/man/man1/shfmt.1 )
	${MODGO_INSTALL_TARGET}

.include "modules.inc"

.include <bsd.port.mk>
