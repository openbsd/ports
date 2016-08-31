# $OpenBSD: Makefile,v 1.2 2016/08/31 15:32:40 jasper Exp $

COMMENT =		collection of CTF tools

DISTNAME =		ctftools-0.1
REVISION =		0
GH_ACCOUNT =		jasperla
GH_PROJECT =		ctftools
GH_COMMIT =		c4a72ae4266a97407916728689568c7f747d0e4b
CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# CDDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread z

BUILD_DEPENDS =		devel/elftoolchain

WRKDIST =		${WRKDIR}/ctftools-${GH_COMMIT}/cddl/

do-build:
	cd ${WRKSRC}/lib/libctf && ${MAKE_PROGRAM}
.for t in ctfconvert ctfdump ctfmerge
	cd ${WRKSRC}/usr.bin/$t && ${MAKE_PROGRAM}
.endfor

do-install:
.for t in ctfconvert ctfdump ctfmerge
	${INSTALL_PROGRAM} ${WRKSRC}/usr.bin/$t/$t ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/usr.bin/$t/$t.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
