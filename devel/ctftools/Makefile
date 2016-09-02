# $OpenBSD: Makefile,v 1.3 2016/09/02 11:09:56 jasper Exp $

COMMENT =		collection of CTF tools

DISTNAME =		ctftools-0.1
REVISION =		1
GH_ACCOUNT =		jasperla
GH_PROJECT =		ctftools
GH_COMMIT =		c4a72ae4266a97407916728689568c7f747d0e4b
CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# CDDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c elf pthread z

LIB_DEPENDS =		devel/libelf \
			devel/libdwarf

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
