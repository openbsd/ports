# $OpenBSD: Makefile,v 1.9 2019/07/11 17:16:59 tj Exp $

COMMENT =		decoder, encoder and replaygain for musepack files

V =			475
DISTNAME =		musepack_src_r${V}
PKGNAME =		musepack-${V}
REVISION =		4
CATEGORIES =		audio

HOMEPAGE =		https://www.musepack.net/

SHARED_LIBS +=		mpcdec		4.0	# .7.0

# BSD and LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://files.musepack.net/source/
DISTFILES =		musepack_src_r${V}.tar.gz libreplaygain_r${V}.tar.gz

WANTLIB += c cue m

MODULES =		devel/cmake

LIB_DEPENDS =		audio/libcue

NO_TEST =		Yes

post-extract:
	cp ${WRKDIR}/libreplaygain_r${V}/include/replaygain/gain_analysis.h ${WRKSRC}/mpcgain/
	cp ${WRKDIR}/libreplaygain_r${V}/src/gain_analysis.c ${WRKSRC}/mpcgain/
	rm -r ${WRKSRC}/include/mpc/.svn

.include <bsd.port.mk>
