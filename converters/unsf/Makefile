# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:52 sthen Exp $

COMMENT =	convert SountFont sf2 files into GUS patchsets
DISTNAME =	unsf-1.1.20180608
CATEGORIES =	converters audio

GH_ACCOUNT =	psi29a
GH_PROJECT =	unsf
GH_COMMIT =	85229250bb2dc19b5aa76391a44e674642142cfe

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# CC0-1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MAKE_FILE =	Makefile.linux
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=gnu99"

NO_TEST =	Yes

# Upstream install target forgets the man page.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unsf ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/unsf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
