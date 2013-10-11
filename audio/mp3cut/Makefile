# $OpenBSD: Makefile,v 1.7 2013/10/11 23:48:04 naddy Exp $

COMMENT =		cut and cat MP3 files

MODULES =		cpan
# strip -p5 from PKGNAME (added by the cpan MODULE)
DISTNAME =		mp3cut-1.13
PKGNAME =		${DISTNAME}
REVISION =		0
CATEGORIES =		audio

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		JV

RUN_DEPENDS =		audio/p5-CDDB-File \
			audio/p5-MPEG-Audio-Frame
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
