# Dlang
ONLY_FOR_ARCHS =	amd64

COMMENT =	commandline FreeDesktop trash bin utility
CATEGORIES =	sysutils

GH_ACCOUNT =	rushsteve1
GH_PROJECT =	trash-d
GH_TAGNAME =	21

REVISION =	0

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

BUILD_DEPENDS =	lang/gcc/16,-dlang \
		textproc/scdoc

TEST_DEPENDS =	lang/gcc/16,-dlang

do-build:
	cd ${WRKSRC} && egdc -O -frelease -finline-functions -Isource -J. \
		-otrash source/app.d source/trash/*.d
	cd ${WRKSRC} && scdoc < MANUAL.scd > trash.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trash ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/trash.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/completions/fish/trash.fish \
		${PREFIX}/share/fish/vendor_completions.d/trash.fish
	${INSTALL_DATA} ${WRKSRC}/completions/zsh/_trash \
		${PREFIX}/share/zsh/site-functions/_trash

# If tests pass, exit code is 0 and output contains: 1 modules passed unittests
do-test:
	cd ${WRKSRC} && egdc -fmain -funittest -Isource -J. -otests \
		source/tests.d source/trash/*.d && ./tests

.include <bsd.port.mk>
