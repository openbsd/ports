# $OpenBSD: Makefile,v 1.8 2018/04/17 19:39:33 kn Exp $

COMMENT =	emulator for rapid prototyping of software defined networks

DISTNAME =	mininet-0.0.20170813
REVISION =	5
GH_ACCOUNT =	mininet
GH_PROJECT =	mininet
GH_COMMIT =	87e26ef931ee6063332ceba77db472140f832d3a

CATEGORIES =	net

HOMEPAGE =	http://mininet.org

MAINTAINER =	Ayaka Koshibe <akoshibe@gmail.com>

# Custom BSD-3 clause-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		devel/help2man
RUN_DEPENDS =		net/socat \
			net/iperf

SEPARATE_BUILD =	Yes

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/mnexec.c -o ${WRKBUILD}/mnexec
	help2man -N -n "create a Mininet network."  --no-discard-stderr \
		"PYTHONPATH=${WRKBUILD} ${MODPY_BIN} -B ${WRKBUILD}/bin/mn" \
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
