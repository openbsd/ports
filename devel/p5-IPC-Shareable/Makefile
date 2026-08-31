COMMENT =	share Perl variables between processes

DISTNAME =	IPC-Shareable-1.19
CPAN_AUTHOR =	STEVEB

CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

# upstream tgz contains macOS extension, OpenBSD tar fails to extract
# https://github.com/stevieb9/ipc-shareable/issues/67
EXTRACT_CASES =		*.tar.gz) \
			${GZIP_CMD} -d <${FULLDISTDIR}/$$archive | \
			${LOCALBASE}/bin/gtar -xf - -- ${EXTRACT_FILES};;

MODULES =		cpan

BUILD_DEPENDS =		archivers/gtar
RUN_DEPENDS =		converters/p5-JSON \
			devel/p5-String-CRC32
TEST_DEPENDS =		devel/p5-Mock-Sub>=1.09 \
			devel/p5-Test-SharedFork>=0.35

.include <bsd.port.mk>
