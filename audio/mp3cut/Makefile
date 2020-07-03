# $OpenBSD: Makefile,v 1.11 2020/07/03 21:44:29 sthen Exp $

COMMENT =		cut and cat MP3 files

MODULES =		cpan
PKG_ARCH =		*
# strip -p5 from PKGNAME (added by the cpan MODULE)
DISTNAME =		mp3cut-1.13
PKGNAME =		${DISTNAME}
REVISION =		2
CATEGORIES =		audio

# GPL/Artistic
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		JV

RUN_DEPENDS =		audio/p5-CDDB-File \
			audio/p5-MPEG-Audio-Frame
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
