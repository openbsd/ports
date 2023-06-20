COMMENT =	command-line .torrent file creator

REVISION =	0
GH_ACCOUNT =	pobrn
GH_PROJECT =	mktorrent
GH_TAGNAME =	v1.1
CATEGORIES =	net

HOMEPAGE =	https://github.com/pobrn/mktorrent
MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto pthread

NO_TEST =	Yes

MAKE_FILE =	BSDmakefile
MAKE_FLAGS =	USE_PTHREADS=1 \
		USE_OPENSSL=1 \
		USE_LONG_OPTIONS=1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mktorrent ${PREFIX}/bin

.include <bsd.port.mk>
