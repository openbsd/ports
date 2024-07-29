COMMENT=	fast, efficient and secure backup program

MODGO_MODNAME=	github.com/restic/restic
MODGO_VERSION=	v0.17.0

DISTNAME=	restic-${MODGO_VERSION}

CATEGORIES=	sysutils

HOMEPAGE=	https://restic.net/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
NO_TEST=	Yes

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1 \
	    ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/fish/vendor_completions.d \
	    ${PREFIX}/share/zsh/site-functions
	cd ${PREFIX}; bin/restic generate \
	    --man man/man1 \
	    --bash-completion share/bash-completion/completions/restic \
	    --fish-completion share/fish/vendor_completions.d/restic.fish \
	    --zsh-completion share/zsh/site-functions/restic

.include "modules.inc"

.include <bsd.port.mk>
