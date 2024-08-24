COMMENT=	automates xrandr calls based on connected devices

CATEGORIES=	x11 sysutils

GH_ACCOUNT=	phillipberndt
GH_PROJECT=	autorandr
GH_TAGNAME=	1.15
MODPY_EGG_VERSION=	${GH_TAGNAME}.post1
REVISION=		1

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD =	setuptools

# No tests provided by upstream.
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/autorandr.1 ${PREFIX}/man/man1/autorandr.1
	${INSTALL_DATA} -D {${WRKSRC}/contrib/bash_completion/,${PREFIX}/share/bash_completion/completions}/autorandr
	${INSTALL_DATA} -D {${WRKSRC}/contrib/fish_completion/,${PREFIX}/share/fish/vendor_completions.d}/autorandr.fish
	${INSTALL_DATA} -D {${WRKSRC}/contrib/zsh_completion/,${PREFIX}/share/zsh/site-functions}/_autorandr

.include <bsd.port.mk>
