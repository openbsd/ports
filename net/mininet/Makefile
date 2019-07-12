# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:32 sthen Exp $

COMMENT =	emulator for rapid prototyping of software defined networks

V=		2.2.2
DISTNAME =	mininet-$V
EXTRACT_SUFX =	.tar.gz

CATEGORIES =	net

HOMEPAGE =	http://mininet.org

MAINTAINER =	Ayaka Koshibe <akoshibe@gmail.com>

# Custom BSD-3 clause-like
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =	https://github.com/akoshibe/mininet/releases/download/v$V/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		net/socat \
			net/iperf

SEPARATE_BUILD =	Yes

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/mnexec.c ${WRKSRC}/mnexec_bsd.c \
		 -o ${WRKBUILD}/mnexec
	help2man -N -n "create a Mininet network."  --no-discard-stderr \
		"PYTHONPATH=${WRKSRC} ${MODPY_BIN} -B ${WRKSRC}/bin/mn" \
		-o ${WRKBUILD}/mn.1
	help2man -N -n "execution utility for Mininet."  -h "-h" -v "-v" \
		--no-discard-stderr ${WRKBUILD}/mnexec -o ${WRKBUILD}/mnexec.1

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mnexec ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mininet
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/mininet
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mininet
.for f in examples/README.md examples/*.py util/switchd.conf
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/examples/mininet
.endfor

.include <bsd.port.mk>
